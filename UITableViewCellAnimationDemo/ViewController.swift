//
//  ViewController.swift
//  UITableViewCellAnimationDemo
//
//  Created by C.K on 9/6/15.
//  Copyright © 2015 chenkun. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    @IBOutlet var datePicker: UIDatePicker!
    var shouldShowNotification = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bottomView = UIView(frame: CGRectZero)
        self.tableView.tableFooterView = bottomView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func notifyAction(sender: UISwitch) {
        
        self.shouldShowNotification = sender.on
        self.datePicker.hidden = !sender.on
        
        // method 1
//        self.tableView.reloadData()
        
        // method 2
        self.tableView.beginUpdates()
        self.tableView.endUpdates()
    }

}

extension ViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.row == 1 && self.shouldShowNotification
        {
            return 211
        }
        
        return 44
    }
    
    
}

