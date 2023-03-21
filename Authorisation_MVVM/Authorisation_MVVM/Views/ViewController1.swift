//
//  ViewController.swift
//  Authorisation_MVVM
//
//  Created by Vasili Staratsitarau on 21/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        viewModel.userButtonPressed(login: (login.text ?? ""), password: (password.text ?? ""))
    }
    @IBOutlet weak var label: UILabel!
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        bindViewModel()
        // Do any additional setup after loading the view.
    }

    func bindViewModel() {
        viewModel.statusText.bind( { (statusText) in DispatchQueue.main.async {
            self.label.text = statusText
        }
        })
    }
    
}

