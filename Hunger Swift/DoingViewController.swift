//
//  DoingViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 10/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class DoingViewController: UIViewController {
    
    @IBOutlet var atHome: UIButton!
    @IBOutlet var outside: UIButton!
    @IBOutlet var atShops: UIButton!
    @IBOutlet var atWork: UIButton!
    @IBOutlet var watchingTV: UIButton!
    @IBOutlet var shopping: UIButton!
    @IBOutlet var cooking: UIButton!
    @IBOutlet var working: UIButton!
    @IBOutlet var other: UIButton!
    @IBOutlet var sitting: UIButton!
    @IBOutlet var standing: UIButton!
    
    var whereArray = ["At Home", "Outside", "At Shops", "At Work"]
    var whatArray = ["Watching TV / On Computer", "Shopping / Travelling", "Cooking", "Working", "Other"]
    var areArray = ["Sitting", "Standing"]
    
    var checkPhoto = UIImage(named: "check_icon.png")! as UIImage
    var uncheckPhoto = UIImage(named: "uncheck_icon.png")! as UIImage
    
    var atHomeBool = false
    var outsideBool = false
    var atShopsBool = false
    var atWorkBool = false
    var watchingTVBool = false
    var shoppingBool = false
    var cookingBool = false
    var workingBool = false
    var otherBool = false
    var sittingBool = false
    var standingBool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func atHomeButton(sender: AnyObject) {
        print(whereArray[0])
        newDiary?.youWereAt = whereArray[0]
        
        atHomeBool = true
        if atHomeBool == true {
            atHome.setImage(checkPhoto, forState: .Normal)
            outside.setImage(uncheckPhoto, forState: .Normal)
            atShops.setImage(uncheckPhoto, forState: .Normal)
            atWork.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func outsideButton(sender: AnyObject) {
        print(whereArray[1])
        newDiary?.youWereAt = whereArray[1]
        
        outsideBool = true
        if outsideBool == true {
            outside.setImage(checkPhoto, forState: .Normal)
            atHome.setImage(uncheckPhoto, forState: .Normal)
            atShops.setImage(uncheckPhoto, forState: .Normal)
            atWork.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func atShopsButton(sender: AnyObject) {
        print(whereArray[2])
        newDiary?.youWereAt = whereArray[2]
        
        atShopsBool = true
        if atShopsBool == true {
            atShops.setImage(checkPhoto, forState: .Normal)
            atHome.setImage(uncheckPhoto, forState: .Normal)
            outside.setImage(uncheckPhoto, forState: .Normal)
            atWork.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func atWorkButton(sender: AnyObject) {
        print(whereArray[3])
        newDiary?.youWereAt = whereArray[3]
        
        atWorkBool = true
        if atWorkBool == true {
            atWork.setImage(checkPhoto, forState: .Normal)
            atHome.setImage(uncheckPhoto, forState: .Normal)
            outside.setImage(uncheckPhoto, forState: .Normal)
            atShops.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func watchingTVButton(sender: AnyObject) {
        print(whatArray[0])
        newDiary?.youWereDoing = whatArray[0]
        
        watchingTVBool = true
        if watchingTVBool == true {
            watchingTV.setImage(checkPhoto, forState: .Normal)
            shopping.setImage(uncheckPhoto, forState: .Normal)
            cooking.setImage(uncheckPhoto, forState: .Normal)
            working.setImage(uncheckPhoto, forState: .Normal)
            other.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func shoppingButton(sender: AnyObject) {
        print(whatArray[1])
        newDiary?.youWereDoing = whatArray[1]
        
        shoppingBool = true
        if shoppingBool == true {
            watchingTV.setImage(uncheckPhoto, forState: .Normal)
            shopping.setImage(checkPhoto, forState: .Normal)
            cooking.setImage(uncheckPhoto, forState: .Normal)
            working.setImage(uncheckPhoto, forState: .Normal)
            other.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func cookingButton(sender: AnyObject) {
        print(whatArray[2])
        newDiary?.youWereDoing = whatArray[2]
        
        cookingBool = true
        if cookingBool == true {
            watchingTV.setImage(uncheckPhoto, forState: .Normal)
            shopping.setImage(uncheckPhoto, forState: .Normal)
            cooking.setImage(checkPhoto, forState: .Normal)
            working.setImage(uncheckPhoto, forState: .Normal)
            other.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func workingButton(sender: AnyObject) {
        print(whatArray[3])
        newDiary?.youWereDoing = whatArray[3]
        
        workingBool = true
        if workingBool == true {
            watchingTV.setImage(uncheckPhoto, forState: .Normal)
            shopping.setImage(uncheckPhoto, forState: .Normal)
            cooking.setImage(uncheckPhoto, forState: .Normal)
            working.setImage(checkPhoto, forState: .Normal)
            other.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func otherButton(sender: AnyObject) {
        print(whatArray[4])
        newDiary?.youWereDoing = whatArray[4]
        
        otherBool = true
        if otherBool == true {
            watchingTV.setImage(uncheckPhoto, forState: .Normal)
            shopping.setImage(uncheckPhoto, forState: .Normal)
            cooking.setImage(uncheckPhoto, forState: .Normal)
            working.setImage(uncheckPhoto, forState: .Normal)
            other.setImage(checkPhoto, forState: .Normal)
        }
    }
    @IBAction func sittingButton(sender: AnyObject) {
        print(areArray[0])
        newDiary?.youWereAt = areArray[0]
        
        sittingBool = true
        if sittingBool == true {
            sitting.setImage(checkPhoto, forState: .Normal)
            standing.setImage(uncheckPhoto, forState: .Normal)
        }
    }
    @IBAction func standingButton(sender: AnyObject) {
        print(areArray[1])
        newDiary?.youWereAt = areArray[1]
        
        standingBool = true
        if standingBool == true {
            sitting.setImage(uncheckPhoto, forState: .Normal)
            standing.setImage(checkPhoto, forState: .Normal)
        }
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PhotoViewController") as! PhotoViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}
