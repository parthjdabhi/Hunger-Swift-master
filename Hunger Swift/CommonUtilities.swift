//
//  CommonUtilities.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 10/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
//import SQLite

class CommonUtils: NSObject {
    static let sharedUtils = CommonUtils()
    var progressView : MBProgressHUD = MBProgressHUD.init()
    
    // show alert view
    func showAlert(controller: UIViewController, title: String, message: String) {
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        controller.presentViewController(ac, animated: true){}
    }
    
    // show progress view
    func showProgress(view : UIView, label : String) {
        progressView = MBProgressHUD.showHUDAddedTo(view, animated: true)
        progressView.labelText = label
    }
    
    // hide progress view
    func hideProgress(){
        progressView.removeFromSuperview()
        progressView.hide(true)
    }
}


// Globals
//
let SIGNUP_INFORMATION = "signup_information"

// Create an instance of the service.
let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
let diaryService = DiaryService(context: context)

var diaryListArray:Array<Diary> = []
var selectedDiary:Diary?
var diary:Diary?

var diary_Date:String?
var diary_Time:String?

var diary_where:String?
var diary_Doing:String?
var diary_AreYou:String?

var diary_photo:NSData?
var diary_Calories:String?

var feeling_Hungry:String?
var feeling_Bored:String?
var feeling_Thirsty:String?
var feeling_UnHappy:String?

var diary_TemptScore:String?
var diary_GoingEat:String?

var signUserInfo:Dictionary<String,AnyObject>?



