//
//  HomeRouter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class HomeRouter{
    static func assembleModule() -> HomeViewController {
        let viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.homeViewController = viewController
        return viewController
    }
}
