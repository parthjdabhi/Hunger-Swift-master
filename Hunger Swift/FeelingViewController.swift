//
//  FeelingViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 12/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class FeelingViewController: UIViewController {

    @IBOutlet var hungryLabel: UILabel!
    @IBOutlet var thirstyLabel: UILabel!
    @IBOutlet var boredLabel: UILabel!
    @IBOutlet var unhappyLabel: UILabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ScoreViewController") as! ScoreViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func dateButton(sender: AnyObject) {
    }
    
    @IBAction func doingButton(sender: AnyObject) {
    }
    
    @IBAction func photoButton(sender: AnyObject) {
    }
    
    
    @IBAction func hungrySlider(sender: AnyObject) {
    }
    
    @IBAction func thirstySlider(sender: AnyObject) {
    }
    
    @IBAction func boredSlider(sender: AnyObject) {
    }

    @IBAction func unhappySlider(sender: AnyObject) {
    }
}
