//
//  ViewController.swift
//  ProjectManager
//
//  Created by Miles Franklin on 7/8/19.
//  Copyright © 2019 MAGNUMIUM. All rights reserved.
//

import UIKit
import FirebaseAuth

class FirebaseViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailText.text!, password: PasswordText.text!, completion: {(user, error) in
            
            if user != nil
            {
                self.performSegue(withIdentifier: "loginToHomePage", sender: self)
            }
            else
            {
                if let myError = error?.localizedDescription
                {
                    print(myError)
                }
                else
                {
                    print("Error")
                }
                
            }
            
        })
    }
    @IBAction func signUp(_ sender: UIButton){
        
        Auth.auth().createUser (withEmail: emailText.text!, password: PasswordText.text!, completion: {(user, error) in
            
            if user != nil
            {
                self.performSegue(withIdentifier: "signupToHomePage", sender: self)
            }
            else
            {
                if let myError = error?.localizedDescription
                {
                    print(myError)
                }
                else
                {
                    print("Error")
                }
                
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "loginToHomePage", sender: self)
        }
    }

}
