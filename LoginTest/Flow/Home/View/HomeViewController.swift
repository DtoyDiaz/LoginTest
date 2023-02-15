//
//  HomeViewController.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {
    
    var interactor : HomeBussinesLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: HomeDisplayLogic {
    func displayData(viewModel: [LoginResponse]) {
    }
}
