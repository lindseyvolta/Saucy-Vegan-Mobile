//
//  CreateAccountViewController.swift
//  Saucy Vegan
//
//  Created by VOLTA, LINDSEY on 7/30/18.
//  Copyright © 2018 VOLTA, LINDSEY. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet var fields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doneBtn.layer.cornerRadius = 5
        clearFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func clearFields() {
        for field in fields {
            field.text = ""
        }
    }
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        // API CALL TO ADD NEW USER
        
    }

}
