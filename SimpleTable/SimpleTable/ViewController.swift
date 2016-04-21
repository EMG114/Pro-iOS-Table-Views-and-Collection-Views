//
//  ViewController.swift
//  SimpleTable
//
//  Created by huatian on 16/4/21.
//  Copyright © 2016年 iosdevlog. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for count in 0...10 {
            tableData.append("Item \(count)")
        }
        
        print("The tableData array counts \(tableData)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
}

