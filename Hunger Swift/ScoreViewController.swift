//
//  ScoreViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 12/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet var waitLabel: UILabel!
    @IBOutlet var tempationScore: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func yesEating(sender: AnyObject) {
        diary_GoingEat = "YES"
        saveData()
    }
    
    @IBAction func noEating(sender: AnyObject) {
        diary_GoingEat = "NO"
        saveData()
    }
    
    @IBAction func dateButton(sender: AnyObject) {
    }
    
    @IBAction func doingButton(sender: AnyObject) {
    }
    
    @IBAction func photoButton(sender: AnyObject) {
    }
    
    @IBAction func feelingButton(sender: AnyObject) {
    }
    
    func saveData()
    {
        let savedRecord = diaryService.Create(diary_Date, diary_Time: diary_Time, diary_where: diary_where, diary_Doing: diary_Doing, diary_AreYou: diary_AreYou, diary_photo: diary_photo, diary_Calories: diary_Calories, feeling_Hungry: feeling_Hungry, feeling_Bored: feeling_Bored, feeling_Thirsty: feeling_Thirsty, feeling_UnHappy: feeling_UnHappy, diary_TemptScore: diary_TemptScore, diary_GoingEat: diary_GoingEat)
        print(savedRecord)
        
        let landingPageView = self.storyboard?.instantiateViewControllerWithIdentifier("LandingPageViewController") as? LandingPageViewController
        self.navigationController?.pushViewController(landingPageView!, animated: true)
    }
}
