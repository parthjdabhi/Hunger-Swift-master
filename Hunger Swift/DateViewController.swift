//
//  DateViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 10/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
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
        
        let dateTimeComponents = userCalendar.components(requestedComponents, fromDate: currentDateTime)
        
        let theYear = dateTimeComponents.year
        let theMonth = dateTimeComponents.month
        let theDay = dateTimeComponents.day
        currentDate = "\(theMonth)/\(theDay)/\(theYear)"
        
        dateLabel.text = currentDate
        getTime()
        
        //New Diary
        newDiary = Diary()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: AnyObject)
    {
        //newDiary?.date =  NSDate().dateByAddingTimeInterval(1000)
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("DoingViewController") as! DoingViewController!
        self.navigationController?.pushViewController(next, animated: true)
        
    }
    
    func getTime() {
        
        let date = NSDate()
        let outputFormat = NSDateFormatter()
        outputFormat.locale = NSLocale(localeIdentifier:"en_US")
        outputFormat.dateFormat = "hh:mm a"
        timeLabel.text = (outputFormat.stringFromDate(date))
    }

}
