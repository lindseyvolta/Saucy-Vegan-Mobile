//
//  LogInViewController.swift
//  Saucy Vegan
//
//  Created by VOLTA, LINDSEY on 7/30/18.
//  Copyright © 2018 VOLTA, LINDSEY. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var logInBtn: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInBtn.layer.cornerRadius = 5
        handleRememberMe()
    }


    @IBAction func logInBtnPressed(_ sender: Any) {
        //CHECK CREDENTIALS
        
        if(rememberMeSwitch.isOn){
            defaults.set(true, forKey: "rememberMe")
            defaults.set(usernameTextField.text, forKey: "user")
            defaults.set(passwordTextField.text, forKey: "password")
        }
        
        self.performSegue(withIdentifier: "logInSegue", sender: nil)
    }
    
    
    func handleRememberMe() {
        if(defaults.bool(forKey: "rememberMe")){
            rememberMeSwitch.isOn = true
            usernameTextField.text = defaults.string(forKey: "user")
            passwordTextField.text = defaults.string(forKey: "password")
        }
    }

    
}

