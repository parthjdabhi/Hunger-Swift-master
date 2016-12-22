//
//  Diary+CoreDataProperties.swift
//  
//
//  Created by iParth on 12/21/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Diary {

    @NSManaged var diary_Date: String?
    @NSManaged var diary_Time: String?
    
    @NSManaged var diary_where: String?
    @NSManaged var diary_Doing: String?
    @NSManaged var diary_AreYou: String?
    
    @NSManaged var diary_photo: NSData?
    //@NSManaged var diary_photo: String?
    @NSManaged var diary_Calories: String?
    
    @NSManaged var feeling_Hungry: String?
    @NSManaged var feeling_Bored: String?
    @NSManaged var feeling_Thirsty: String?
    @NSManaged var feeling_UnHappy: String?
    
    @NSManaged var diary_TemptScore: String?
    @NSManaged var diary_GoingEat: String?
    
//    @NSManaged var id: NSNumber?
//    @NSManaged var date: NSDate?
//
//    @NSManaged var temptScore: String?
//    @NSManaged var estimCalories: String?
//    @NSManaged var youWereAt: String?
//    @NSManaged var youWereSeat: String?
//    @NSManaged var youWereDoing: String?
//    @NSManaged var hungry: String?
//    @NSManaged var thirsty: String?
//    @NSManaged var bored: NSNumber?
//    @NSManaged var unhappy: NSNumber?
//    @NSManaged var eaten: String?
    
}
