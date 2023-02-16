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
    
    func loadData() {
        
        var url = "https://passport.scotiabank.com/oauth2/v1/authorize"
        let parameters: Parameters = [
            "response_type": "code",
            "client_id":"0f762fbb-3029-4e23-ac34-9de28474d505",
            "redirect_uri":"https://www.banco.colpatria.com.co/banca-virtual/principal"
        ]
        
        AF.request(url,
                   method: .get,
                   parameters: parameters,
                   encoding: URLEncoding(destination: .queryString)
        ).response {
            response in
            print(response)
        }
    }
}
