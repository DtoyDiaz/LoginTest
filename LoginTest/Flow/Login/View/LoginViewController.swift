//
//  HomeViewController.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    var interactor : LoginBussinesLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginViewController: LoginDisplayLogic {
    func displayData(viewModel: [LoginResponse]) {
    }
}
