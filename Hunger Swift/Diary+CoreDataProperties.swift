//
//  Diary+CoreDataProperties.swift
//  
//
//  Created by iParth on 12/20/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Diary {

    @NSManaged var id: NSNumber?
    @NSManaged var date: NSDate?
    @NSManaged var image: NSData?
    @NSManaged var temptScore: String?
    @NSManaged var estimCalories: NSNumber?
    @NSManaged var youWereAt: String?
    @NSManaged var youWereSeat: String?
    @NSManaged var youWereDoing: String?
    @NSManaged var hungry: String?
    @NSManaged var thirsty: String?
    @NSManaged var bored: NSNumber?
    @NSManaged var unhappy: NSNumber?
    @NSManaged var eaten: String?

}
