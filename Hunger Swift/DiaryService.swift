//
//  Diary.swift
//  
//
//  Created by iParth on 12/20/16.
//
//

import Foundation
import CoreData

class DiaryService {
    
    var context: NSManagedObjectContext
    
    /*
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
     */
    init(context: NSManagedObjectContext){
        self.context = context
    }
    
    // Creates a new diary
    func Create(id: String?, date: NSDate?, image: NSData?, temptScore: String?, estimCalories: String?, youWereAt: String?, youWereSeat: String?, youWereDoing: String?, hungry: String?, thirsty: String?, bored: NSNumber?, unhappy: NSNumber?, eaten: String?) -> Diary {
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Diary", inManagedObjectContext: context) as! Diary
        
        newItem.id = id
        newItem.date = date
        newItem.image = image
        newItem.temptScore = temptScore
        newItem.estimCalories = estimCalories
        newItem.youWereAt = youWereAt
        newItem.youWereSeat = youWereSeat
        newItem.youWereDoing = youWereDoing
        newItem.hungry = hungry
        newItem.thirsty = thirsty
        newItem.bored = bored
        newItem.unhappy = unhappy
        newItem.eaten = eaten
        
        //try? context.save()
        self.saveChanges()
        
        return newItem
    }
    
    func Create(newDiary: Diary) -> Diary {
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Diary", inManagedObjectContext: context) as! Diary
        
        newItem.id = newDiary.id
        newItem.date = newDiary.date
        newItem.image = newDiary.image
        newItem.temptScore = newDiary.temptScore
        newItem.estimCalories = newDiary.estimCalories
        newItem.youWereAt = newDiary.youWereAt
        newItem.youWereSeat = newDiary.youWereSeat
        newItem.youWereDoing = newDiary.youWereDoing
        newItem.hungry = newDiary.hungry
        newItem.thirsty = newDiary.thirsty
        newItem.bored = newDiary.bored
        newItem.unhappy = newDiary.unhappy
        newItem.eaten = newDiary.eaten
        
        //try? context.save()
        self.saveChanges()
        
        return newItem
    }
    
    // Gets a diary by id
    func getById(id: NSManagedObjectID) -> Diary? {
        return context.objectWithID(id) as? Diary
    }
    
    // Gets all.
    func getAll() -> [Diary]{
        return get(withPredicate: NSPredicate(value:true))
    }
    
    // Gets all that fulfill the specified predicate.
    // Predicates examples:
    // - NSPredicate(format: "name == %@", "Juan Carlos")
    // - NSPredicate(format: "name contains %@", "Juan")
    func get(withPredicate queryPredicate: NSPredicate) -> [Diary]{
        let fetchRequest = NSFetchRequest(entityName: "Diary")
        
        fetchRequest.predicate = queryPredicate
        
        do {
            let response = try context.executeFetchRequest(fetchRequest)
            return response as! [Diary]
            
        } catch let error as NSError {
            // failure
            print(error)
            return [Diary]()
        }
    }
    
    // Updates a diary
    func update(updatedDiary: Diary) {
        if let diary = getById(updatedDiary.objectID){
            diary.id = updatedDiary.id
            diary.date = updatedDiary.date
            diary.image = updatedDiary.image
            diary.temptScore = updatedDiary.temptScore
            diary.estimCalories = updatedDiary.estimCalories
            diary.youWereAt = updatedDiary.youWereAt
            diary.youWereSeat = updatedDiary.youWereSeat
            diary.youWereDoing = updatedDiary.youWereDoing
            diary.hungry = updatedDiary.hungry
            diary.thirsty = updatedDiary.thirsty
            diary.bored = updatedDiary.bored
            diary.unhappy = updatedDiary.unhappy
            diary.eaten = updatedDiary.eaten
        }
    }
    
    // Deletes a diary
    func delete(id: NSManagedObjectID){
        if let diaryToDelete = getById(id){
            context.deleteObject(diaryToDelete)
        }
    }
    
    // Saves all changes
    func saveChanges(){
        do{
            try context.save()
        } catch let error as NSError {
            // failure
            print(error)
        }
    }
}