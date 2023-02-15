//
//  Contract.swift
//  LoginTest
//
//  Created by Daniel Diaz on 15/02/23.
//

import Foundation

protocol HomeDisplayLogic: AnyObject {
    func displayData(viewModel: [LoginResponse])
}

protocol HomeBussinesLogic: AnyObject {
    func loadData()
}

protocol HomePresentationLogic: AnyObject {
    func presentData(data: ClientModel)
}
