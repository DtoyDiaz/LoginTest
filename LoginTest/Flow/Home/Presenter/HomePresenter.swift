//
//  HomePresenter.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import Foundation

class HomePresenter{
    
    var homeViewController: HomeDisplayLogic?
}

extension HomePresenter: HomePresentationLogic {
    func presentData(data: ClientModel) {
    }
}
