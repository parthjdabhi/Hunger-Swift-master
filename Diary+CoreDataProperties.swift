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

    @NSManaged var bored: NSNumber?
    @NSManaged var date: NSDate?
    @NSManaged var eaten: String?
    @NSManaged var estimCalories: String?
    @NSManaged var hungry: String?
    @NSManaged var id: String?
    @NSManaged var image: NSData?
    @NSManaged var temptScore: String?
    @NSManaged var thirsty: String?
    @NSManaged var unhappy: NSNumber?
    @NSManaged var youWereAt: String?
    @NSManaged var youWereDoing: String?
    @NSManaged var youWereSeat: String?

}
