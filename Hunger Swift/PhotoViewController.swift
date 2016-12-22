//
//  PhotoViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 10/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var noIdea: UIButton!
    @IBOutlet var caloriesField: UITextField!
    @IBOutlet var food: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func pictureButton(sender: AnyObject) {
//        imagePicker =  UIImagePickerController()
//        imagePicker.delegate = self
//        if imagePicker.sourceType != .Camera {
//            CommonUtils.sharedUtils.showAlert(self, title: "Sorry", message: "The Camera Is Not Available.")
//        } else {
//            imagePicker.sourceType = .Camera
//        }
//        
//        presentViewController(imagePicker, animated: true, completion: nil)
//    }

    @IBAction func nextButton(sender: AnyObject) {
        
        diary_Calories = caloriesField.text ?? ""
        
        if(diary_photo == nil){
            let alertView = UIAlertView(title: "Alert", message: "Please take photo", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
            return
        }
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("FeelingViewController") as? FeelingViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
    
    @IBAction func noIdeaButton(sender: AnyObject) {
        
    }
    
    @IBAction func dateButton(sender: AnyObject) {
        var viewControllers = navigationController?.viewControllers
        viewControllers?.removeLast(2) //views to pop
        navigationController?.setViewControllers(viewControllers!, animated: true)
    }
    
    @IBAction func doingButton(sender: AnyObject) {
        
    
    }
    
    
    @IBAction func pictureButton(sender: AnyObject) {
        // 1
        view.endEditing(true)
        
        // 2
        let imagePickerActionSheet = UIAlertController(title: "Snap/Upload Photo",
                                                       message: nil, preferredStyle: .ActionSheet)
        // 3
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            let cameraButton = UIAlertAction(title: "Take Photo",
                                             style: .Default) { (alert) -> Void in
                                                let imagePicker = UIImagePickerController()
                                                imagePicker.delegate = self
                                                imagePicker.sourceType = .Camera
                                                imagePicker.allowsEditing = true
                                                self.presentViewController(imagePicker,
                                                                           animated: true,
                                                                           completion: nil)
            }
            imagePickerActionSheet.addAction(cameraButton)
        }
        // 4
        let libraryButton = UIAlertAction(title: "Choose Existing",
                                          style: .Default) { (alert) -> Void in
                                            let imagePicker = UIImagePickerController()
                                            imagePicker.delegate = self
                                            imagePicker.sourceType = .PhotoLibrary
                                            imagePicker.allowsEditing = true
                                            self.presentViewController(imagePicker,
                                                                       animated: true,
                                                                       completion: nil)
        }
        imagePickerActionSheet.addAction(libraryButton)
        // 5
        let cancelButton = UIAlertAction(title: "Cancel",
                                         style: .Cancel) { (alert) -> Void in
        }
        imagePickerActionSheet.addAction(cancelButton)
        // 6
        presentViewController(imagePickerActionSheet, animated: true,
                              completion: nil)
    }
    
    // Image picker Delegate methods
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let editedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            food.image = info[UIImagePickerControllerOriginalImage] as? UIImage
            diary_photo = UIImagePNGRepresentation(food.image!)
        }
        else if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            food.image = info[UIImagePickerControllerOriginalImage] as? UIImage
            diary_photo = UIImagePNGRepresentation(food.image!)
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
}
