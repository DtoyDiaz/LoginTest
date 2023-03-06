//
//  HomePresenter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class LoginPresenter{
    
    var LoginViewController: LoginDisplayLogic?
}

extension LoginPresenter: LoginPresentationLogic {
    func presentLoginSuccess() {
    }
    
    func presentLoginError() {
    }
}
