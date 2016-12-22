//
//  DiaryContentViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 12/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class DiaryContentViewController: UIViewController {

    @IBOutlet var temptScore: UITextField!
    @IBOutlet var eatingStatus: UILabel!
    @IBOutlet var dateBtn: UIButton!
    @IBOutlet var timeBtn: UIButton!
    @IBOutlet var caloriesBtn: UILabel!
    @IBOutlet var wheretxtField: UITextField!
    @IBOutlet var doingTxtField: UITextField!
    @IBOutlet var AreyouTxtField: UITextField!
    @IBOutlet var feelHungryTxtField: UITextField!
    @IBOutlet var feelThirstyTxtField: UITextField!
    @IBOutlet var feelBoardTxtField: UITextField!
    @IBOutlet var feelUnhappyTxtField: UITextField!
    @IBOutlet var foodPhotoView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let diary_GoingEat = diary?.diary_GoingEat where diary_GoingEat == "YES" {
            eatingStatus.text = "Eaten"
            eatingStatus.backgroundColor = UIColor.greenColor()
        } else {
            eatingStatus.text = "Not Eaten"
            eatingStatus.backgroundColor = UIColor.redColor()
        }
        temptScore.text = diary?.diary_TemptScore ?? ""
        
        dateBtn.setTitle(diary?.diary_Date ?? "", forState: UIControlState.Normal)
        timeBtn.setTitle(diary?.diary_Time ?? "", forState: UIControlState.Normal)
        
        caloriesBtn.text = diary?.diary_Calories ?? ""
        
        wheretxtField.text = diary?.diary_where ?? ""
        doingTxtField.text = diary?.diary_Doing ?? ""
        AreyouTxtField.text = diary?.diary_AreYou ?? ""
        
        feelHungryTxtField.text = diary?.feeling_Hungry ?? ""
        feelThirstyTxtField.text = diary?.feeling_Thirsty ?? ""
        feelBoardTxtField.text = diary?.feeling_Bored ?? ""
        feelUnhappyTxtField.text = diary?.feeling_UnHappy ?? ""
        
        foodPhotoView.image = (diary!.diary_photo != nil) ? UIImage(data:diary!.diary_photo!) : UIImage(named: "no_image_thumb")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func actionGoToBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
