//
//  Contract.swift
//  LoginTest
//
//  Created by Daniel Diaz on 15/02/23.
//

import Foundation

protocol LoginDisplayLogic: AnyObject {
    func displayData(viewModel: [LoginResponse])
    func displayLoginSuccess()
    func displayLoginError()
}

protocol LoginBussinesLogic: AnyObject {
    func getToken(username: String, password: String)
}

protocol LoginPresentationLogic: AnyObject {
    func presentLoginSuccess()
    func presentLoginError()
}
