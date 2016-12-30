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
 
    @IBOutlet var hungrySilder: UISlider!
    @IBOutlet var thirstySilder: UISlider!
    @IBOutlet var boredSilder: UISlider!
    @IBOutlet var unhappySilder: UISlider!
    
    @IBOutlet var btnDate: UIButton!
    @IBOutlet var btnDoing: UIButton!
    @IBOutlet var btnPhoto: UIButton!
    @IBOutlet var btnFeeling: UIButton!
    @IBOutlet var btnScore: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    
    @IBAction func change_value(sender: AnyObject) {
        let tag = sender.tag
        let tmpSider = (sender as! UISlider)
        let value = Int(tmpSider.value)
        var feelingValueString: String = ""
        switch value {
        case 1:
            feelingValueString = "NO"
        case 2:
            feelingValueString = "A little"
        case 3:
            feelingValueString = "Some"
        case 4:
            feelingValueString = "Very"
        default:
            feelingValueString = "-=-"
            break
        }
        
        switch tag {
        case 0:
            feeling_Hungry = feelingValueString
            hungryLabel.text = "\(Int(value))"
        case 1:
            feeling_Thirsty = feelingValueString
            thirstyLabel.text = "\(Int(value))"
        case 2:
            feeling_Bored = feelingValueString
            boredLabel.text = "\(Int(value))"
        case 3:
            feeling_UnHappy = feelingValueString
            unhappyLabel.text = "\(Int(value))"
        default:
            break
        }
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        
        let totalScore:Int =  Int(hungrySilder.value) + Int(thirstySilder.value) + Int(boredSilder.value) + Int(unhappySilder.value)
        diary_TemptScore = "\(totalScore)"
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ScoreViewController") as! ScoreViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func clicked_tabbtn(sender: AnyObject) {
    }
    @IBAction func dateButton(sender: AnyObject) {
    }
    
    @IBAction func doingButton(sender: AnyObject) {
    }
    
    @IBAction func photoButton(sender: AnyObject) {
    }
    
}
