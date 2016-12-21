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
var newDiary:Diary?

var signUserInfo:Dictionary<String,AnyObject>?



