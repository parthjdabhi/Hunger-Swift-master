//
//  DiaryViewController.swift
//  Hunger Swift
//
//  Created by Dustin Allen on 12/5/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class DiaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diaryListArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var DiaryCellIdentifier = "DiaryCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(DiaryCellIdentifier) as? DiaryCell
        if cell == nil {
            cell = DiaryCell(style: .Default, reuseIdentifier: DiaryCellIdentifier)
        }
        if diaryListArray.count > indexPath.row {
//            filename = (tmpDiary["hungryapp_diaryphoto"] as! String)
//            UIImage * image
//            if ("" == filename) {
//                image = UIImage(named: "no_image_thumb")!
//            }
//            else {
//                var paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
//                var documentsDirectory = paths[0]
//                var path = NSURL(fileURLWithPath: documentsDirectory).URLByAppendingPathComponent(String = filename).absoluteString
//                image = UIImage(contentsOfFile: path)!
//            }
//            cell.foodImageView.image = image
            cell?.dateLabel.text = "\((diaryListArray[indexPath.row].date != nil) ? diaryListArray[indexPath.row].date! : "")"
            cell?.accessoryType = .DisclosureIndicator
        }
        return cell!
    }
    
    @IBAction func clicked_backtostart(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)!
    }
}
