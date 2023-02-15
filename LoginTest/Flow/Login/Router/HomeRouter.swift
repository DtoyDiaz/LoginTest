//
//  HomeRouter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class HomeRouter{
    static func assembleModule() -> LoginViewController {
        let viewController = LoginViewController(nibName: "HomeViewController", bundle: nil)
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.homeViewController = viewController
        return viewController
    }
}
