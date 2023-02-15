//
//  ViewController.swift
//  LoginTest
//
//  Created by Daniel Diaz on 13/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButton(_ sender: Any) {
        let nextVC = LoginViewController.init(nibName: "LoginViewController", bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

