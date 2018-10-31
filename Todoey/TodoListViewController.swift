//
//  ViewController.swift
//  Todoey
//
//  Created by Grant Plaster on 10/30/18.
//  Copyright © 2018 Grant Plaster. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    let itemArray = ["Gather Fellowship", "Take the Ring to Mordor", "Destroy the One Ring"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]

        return cell
    }
    
    //MARK - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.accessoryType == UITableViewCellAccessoryType.none {
            cell?.accessoryType = .checkmark
        }
        else {
            cell?.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

