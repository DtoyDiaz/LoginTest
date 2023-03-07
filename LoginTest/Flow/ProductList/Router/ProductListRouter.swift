//
//  ProductListRouter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 7/03/23.
//

import Foundation

class   ProductListRouter{
    static func assembleModule() -> ProductListViewController {
        let viewController = ProductListViewController(nibName: "ProductListViewController", bundle: nil)
        let interactor = ProductListInteractor()
        let presenter = ProductListPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.productListViewController = viewController
        return viewController
    }
}
