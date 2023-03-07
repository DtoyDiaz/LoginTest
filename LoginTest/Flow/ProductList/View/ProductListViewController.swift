//
//  ProductListViewController.swift
//  LoginTest
//
//  Created by Daniel Diaz on 6/03/23.
//

import UIKit

class ProductListViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var interactor : ProductListBussinesLogic?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let greet: String = "Bienvenido Pepito"
    }
}

extension ProductListViewController: ProductListDisplayLogic {
    func displayData(viewModel: [ProductListResponse]) {
    }
}
