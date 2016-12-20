//
//  ViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 10/4/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel: UITextField!
    @IBOutlet var heightLabel: UITextField!
    @IBOutlet var weightLabel: UITextField!
    @IBOutlet var date1Label: UILabel!
    @IBOutlet var weight2Label: UITextField!
    @IBOutlet var date2Label: UILabel!
    @IBOutlet var weightChangeLabel: UITextField!
    @IBOutlet var changeLabel: UILabel!
    
    var currentDate = ""
    let currentDateTime = NSDate()
    let userCalendar = NSCalendar.currentCalendar()
    let requestedComponents: NSCalendarUnit = [
        NSCalendarUnit.Year,
        NSCalendarUnit.Month,
        NSCalendarUnit.Day,
        NSCalendarUnit.Hour,
        NSCalendarUnit.Minute,
        NSCalendarUnit.Second
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("FeelingViewController") as? FeelingViewController
        self.navigationController?.pushViewController(next!, animated: true)
        
        let dateTimeComponents = userCalendar.components(requestedComponents, fromDate: currentDateTime)
        
        let theYear = dateTimeComponents.year
        let theMonth = dateTimeComponents.month
        let theDay = dateTimeComponents.day
        currentDate = "\(theMonth)/\(theDay)/\(theYear)"

        date1Label.text = currentDate
        date2Label.text = currentDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButton(sender: AnyObject) {
        
        if nameLabel.text == "" {
            CommonUtils.sharedUtils.showAlert(self, title: "Sorry", message: "You Must Enter A Name To Continue")
            return
        }
        if heightLabel.text == "" {
            CommonUtils.sharedUtils.showAlert(self, title: "Sorry", message: "We Need Your Height To Proceed")
            return
        }
        if weightLabel.text == "" {
            CommonUtils.sharedUtils.showAlert(self, title: "Sorry", message: "Please Enter Your Current Weight")
            return
        }
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("DateViewController") as! DateViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}

