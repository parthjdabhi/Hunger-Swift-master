//
//  Diary.swift
//  
//
//  Created by iParth on 12/21/16.
//
//

import Foundation
import CoreData


class Diary: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    override var description : String {
        //return "****  ****\n"
        return "---- id: , date: \(diary_Date), temptScore: \(diary_TemptScore ), estimCalories: \(diary_Calories), youWereAt: \(diary_where), youWereSeat: \(diary_AreYou ?? "-"), youWereDoing: \(diary_Doing) ----\n"
    }
    
    override var debugDescription : String {
        //return "---- id: \(id ?? "-"), date: \(date), image: , temptScore: \(temptScore ?? "-"), estimCalories: \(estimCalories ?? "-"), youWereAt: \(youWereAt ?? "-"), youWereSeat: \(youWereSeat ?? "-"), youWereDoing: \(youWereDoing ?? "-"), hungry: \(hungry ?? "-"), thirsty: \(thirsty ?? "-"), bored: \(bored), unhappy: \(unhappy), eaten: \(eaten ?? "-") ----\n"
        return "---- temptScore: \(diary_TemptScore ?? "-") ----\n"
    }
}
