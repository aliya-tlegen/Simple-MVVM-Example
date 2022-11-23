//
//  ViewController.swift
//  MVVM_LogIn
//
//  Created by Алия Тлеген on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusTextLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginTextField.text ?? ""), password: (passwordTextField.text ?? ""))
    }
    
    var viewModel = ViewModel()
    
    func initialState() {
        statusTextLabel.isHidden = true
//        statusTextLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind( { (statusText) in
            DispatchQueue.main.async {
                self.statusTextLabel.text = statusText
                self.statusTextLabel.isHidden = false
            }
        })
        viewModel.statusColor.bind({ ( statusColor) in
            DispatchQueue.main.async {
                self.statusTextLabel.textColor = statusColor
            }
        })
    }
}

