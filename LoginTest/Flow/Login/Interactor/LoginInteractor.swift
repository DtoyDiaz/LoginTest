//
//  HomeInteractor.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation
import Alamofire

class LoginInteractor {
    
    var presenter: LoginPresentationLogic?
}

extension LoginInteractor: LoginBussinesLogic {
    
    func getToken(username: String, password: String) {
        
        var url = "https://passport.scotiabank.com/oauth2/v1/authorize"
        let parameters: Parameters = [
            "response_type": "code",
            "client_id":"0f762fbb-3029-4e23-ac34-9de28474d505",
            "redirect_uri":"https://www.banco.colpatria.com.co/banca-virtual/principal"
        ]
        
        let redirector = Redirector(behavior: .modify({ task, req, response in
            let queryParams = URLComponents(url: req.url!, resolvingAgainstBaseURL: true)?.queryItems
            let oauthKey = queryParams?.first(where: { $0.name == "oauth_key" })
            self.hasLogin(oauthKey: oauthKey?.value ?? "")
            return nil
        }))
        
        AF.request(url,
                   method: .get,
                   parameters: parameters,
                   encoding: URLEncoding(destination: .queryString)
        ).response {
            response in
            print(response.response?.statusCode)
        }.redirect(using: redirector)
    }
    
    func hasLogin(oauthKey:String) {
        var url = "https://www.banco.colpatria.com.co/banca-virtual/mobile/api/elysium/authorization"
        let parameters: Parameters = [
            "client_id": "0f762fbb-3029-4e23-ac34-9de28474d505",
            "username":"",
            "password":""
        ]
        
        let headers: HTTPHeaders = ["Passport-OAuth-Key":oauthKey]
        
        AF.request(url,
                method: .post,
                parameters: parameters,
                encoding: JSONEncoding.default,
                headers: headers
        ).responseDecodable (of: TokenResponse.self){
            response in
            switch response.result {
            case .success(let data):
                self.receiveToken(passportToken: data.passportChangeTokenCode)
                print("Response JSON: \(data)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    func receiveToken(passportToken: String) {
        var url = "https://www.banco.colpatria.com.co/banca-virtual/mobile/api/janus/passport/token"
        let parameters: Parameters = [
            "client_id": "0f762fbb-3029-4e23-ac34-9de28474d505",
            "code": passportToken,
            "redirect_uri": "https://www.banco.colpatria.com.co/banca-virtual/principal",
            "grant_type": "authorization_code"
        ]
        
        let headers: HTTPHeaders = ["Content-Type":"application/x-www-form-urlencoded"]
        
        AF.request(url,
                method: .post,
                parameters: parameters,
                encoding: Alamofire.URLEncoding.default,
                headers: headers
        ).responseJSON {
            response in
            switch response.result {
            case .success(let value):
                print("Response JSON: \(value)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
