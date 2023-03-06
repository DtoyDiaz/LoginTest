//
//  HomePresenter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class LoginPresenter{
    
    var loginViewController: LoginDisplayLogic?

}

extension LoginPresenter: LoginPresentationLogic {
    func presentLoginSuccess() {
        self.loginViewController?.displayLoginSuccess()
    }
    
    func presentLoginError() {
        self.loginViewController?.displayLoginError()
    }
}
