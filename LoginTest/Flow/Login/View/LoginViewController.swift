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
        interactor?.getToken(
            username: (userTextField.text ?? "nil"),
            password: (passwordTextField.text!))
        self.displayLoginSuccess()
        self.displayLoginError()
    }
    
    func displayLoginSuccess(){
        
        let alertSuccess:UIAlertController = UIAlertController(
            title: "Success",
            message: "Aenean facilisis, est sit amet gravida pulvinar.",
            preferredStyle: UIAlertController.Style.alert)
        
        alertSuccess.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
        }))
        
        alertSuccess.addAction(UIAlertAction(
            title: "ok", style: UIAlertAction.Style.default, handler: { _ in
        }))
        
        self.present(alertSuccess, animated: true, completion: nil)
    }
    
    func displayLoginError() {
        let alertError: UIAlertController = UIAlertController(
            title: "Error",
            message: "Aenean facilisis, est sit amet gravida pulvinar.",
            preferredStyle: UIAlertController.Style.alert)
        
        alertError.addAction(UIAlertAction(
            title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
        }))
        
        alertError.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { _ in
        }))
        
        self.present(alertError, animated: true, completion: nil)
    }
}

extension LoginViewController: LoginDisplayLogic {
    func displayData(viewModel: [LoginResponse]) {
    }
}
