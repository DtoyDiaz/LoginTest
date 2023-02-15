//
//  HomePresenter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class LoginPresenter{
    
    var homeViewController: HomeDisplayLogic?
}

extension LoginPresenter: HomePresentationLogic {
    func presentData(data: ClientModel) {
    }
}
