//
//  LandingPageViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 12/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func diaryButton(sender: AnyObject) {
        let diaryViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DiaryViewController") as? DiaryViewController
        self.navigationController?.pushViewController(diaryViewController!, animated: true)
    }

    @IBAction func updateMyWeight(sender: AnyObject) {
        //let signUpViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SignUpViewController") as? SignUpViewController
        //self.navigationController?.pushViewController(signUpViewController!, animated: true)
    }

    @IBAction func temptedToEat(sender: AnyObject) {
        let dateViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DateViewController") as? DateViewController
        self.navigationController?.pushViewController(dateViewController!, animated: true)
    }
}
