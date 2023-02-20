//
//  Contract.swift
//  LoginTest
//
//  Created by Daniel Diaz on 15/02/23.
//

import Foundation

protocol LoginDisplayLogic: AnyObject {
    func displayData(viewModel: [LoginResponse])
}

protocol LoginBussinesLogic: AnyObject {
    func getToken()
}

protocol LoginPresentationLogic: AnyObject {
    func presentData(data: ClientModel)
}
