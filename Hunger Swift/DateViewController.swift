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
    
    @IBOutlet var btnDate: UIButton!
    @IBOutlet var btnDoing: UIButton!
    @IBOutlet var btnPhoto: UIButton!
    @IBOutlet var btnFeeling: UIButton!
    @IBOutlet var btnScore: UIButton!
    
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
        
        diary_Date = currentDate
        
        getTime()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: AnyObject)
    {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("DoingViewController") as! DoingViewController!
        self.navigationController?.pushViewController(next, animated: true)
        
    }
    
    func getTime() {
        
        let date = NSDate()
        let outputFormat = NSDateFormatter()
        outputFormat.locale = NSLocale(localeIdentifier:"en_US")
        outputFormat.dateFormat = "hh:mm a"
        timeLabel.text = (outputFormat.stringFromDate(date))
        
        diary_Time = (outputFormat.stringFromDate(date))
    }
    
    @IBAction func actionTabButton(sender: UIButton)
    {
        if sender == btnDate {
            self.gotToPageFromClass(DateViewController)
        } else if sender == btnDoing {
            self.gotToPageFromClass(DoingViewController)
        } else if sender == btnPhoto {
            self.gotToPageFromClass(PhotoViewController)
        } else if sender == btnFeeling {
            self.gotToPageFromClass(FeelingViewController)
        } else if sender == btnScore {
            self.gotToPageFromClass(ScoreViewController)
        }
    }

}
