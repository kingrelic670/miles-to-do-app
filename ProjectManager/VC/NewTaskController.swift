//
//  File.swift
//  ProjectManager
//
//  Created by Miles Franklin on 7/25/19.
//  Copyright © 2019 MAGNUMIUM. All rights reserved.
//

import UIKit

import Firebase

var list = ["do homework", "do laundry", "get car then wash car"]

class NewTaskController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func Additem(_ sender: AnyObject)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
    
    
}
