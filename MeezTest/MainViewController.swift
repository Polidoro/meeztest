//
//  MainViewController.swift
//  MeezTest
//
//  Created by Vincent Polidoro on 3/2/16.
//  Copyright © 2016 Vincent Polidoro. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    var players:[MenuItem] = defaultMenuItems

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView(frame: CGRectZero)
        title = "Meez"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultMenuItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("MenuCell", forIndexPath: indexPath)
            
            let menuItem = defaultMenuItems[indexPath.row] as MenuItem
            cell.textLabel?.text = menuItem.title
            cell.detailTextLabel?.text = menuItem.subtitle
            return cell
    }
}

