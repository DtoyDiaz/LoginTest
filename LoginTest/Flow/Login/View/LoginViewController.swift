//
//  HomeViewController.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var interactor : LoginBussinesLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        interactor?.loadData()
    }
}

extension LoginViewController: LoginDisplayLogic {
    func displayData(viewModel: [LoginResponse]) {
    }
}
