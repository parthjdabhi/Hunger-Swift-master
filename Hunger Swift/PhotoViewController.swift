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
    
    @IBAction func pictureButton(sender: AnyObject) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        if imagePicker.sourceType != .Camera {
            CommonUtils.sharedUtils.showAlert(self, title: "Sorry", message: "The Camera Is Not Available.")
        } else {
            imagePicker.sourceType = .Camera
        }
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func nextButton(sender: AnyObject) {
        
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
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        food.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}
