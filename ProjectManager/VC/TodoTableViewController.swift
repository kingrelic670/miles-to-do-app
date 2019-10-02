
//
//  TodoTableViewController.swift
//  ProjectManager
//
//  Created by Miles Franklin on 7/11/19.
//  Copyright © 2019 MAGNUMIUM. All rights reserved.
//

import UIKit

class TodoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    var list = ["hello world", "what it do"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle:
        UITableViewCell.EditingStyle, forRowAt IndexPath: IndexPath) {
        
        
    }
    
    
        
}

