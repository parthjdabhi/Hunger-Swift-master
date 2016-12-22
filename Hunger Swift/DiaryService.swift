//
//  Diary.swift
//  
//
//  Created by iParth on 12/20/16.
//
//

import Foundation
import CoreData

class DiaryObject {
    
}

class DiaryService {
    
    var context: NSManagedObjectContext
    
    /*
     @NSManaged var diary_Date: String?
     @NSManaged var diary_Time: String?
     
     @NSManaged var diary_where: String?
     @NSManaged var diary_Doing: String?
     @NSManaged var diary_AreYou: String?
     
     @NSManaged var diary_photo: String?
     @NSManaged var diary_Calories: String?
     
     @NSManaged var feeling_Hungry: String?
     @NSManaged var feeling_Bored: String?
     @NSManaged var feeling_Thirsty: String?
     @NSManaged var feeling_UnHappy: String?
     
     @NSManaged var diary_TemptScore: String?
     @NSManaged var diary_GoingEat: String?
     */
    init(context: NSManagedObjectContext){
        self.context = context
    }
    
    // Creates a new diary
    func Create(diary_Date: String?, diary_Time: String?, diary_where: String?, diary_Doing: String?, diary_AreYou: String?, diary_photo: NSData?, diary_Calories: String?, feeling_Hungry: String?, feeling_Bored: String?, feeling_Thirsty: String?, feeling_UnHappy: String?, diary_TemptScore: String?, diary_GoingEat: String?) -> Diary {
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Diary", inManagedObjectContext: context) as! Diary
        
        newItem.diary_Date = diary_Date
        newItem.diary_Time = diary_Time
        
        newItem.diary_where = diary_where
        newItem.diary_Doing = diary_Doing
        newItem.diary_AreYou = diary_AreYou
        
        
        newItem.diary_TemptScore = diary_TemptScore
        newItem.diary_Calories = diary_Calories
        
        newItem.feeling_Hungry = feeling_Hungry
        newItem.feeling_Bored = feeling_Bored
        newItem.feeling_Thirsty = feeling_Thirsty
        newItem.feeling_UnHappy = feeling_UnHappy
        
        newItem.diary_photo = diary_photo
        newItem.diary_GoingEat = diary_GoingEat
        
        //try? context.save()
        self.saveChanges()
        
        return newItem
    }
    
    func Create(newDiary: Diary) -> Diary {
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Diary", inManagedObjectContext: context) as! Diary
        
        newItem.diary_Date = newDiary.diary_Date
        newItem.diary_Date = newDiary.diary_Date
        newItem.diary_Time = newDiary.diary_Time
        
        newItem.feeling_Hungry = newDiary.feeling_Hungry
        newItem.diary_Doing = newDiary.diary_Doing
        newItem.diary_AreYou = newDiary.diary_AreYou
        
        
        newItem.diary_TemptScore = newDiary.diary_TemptScore
        newItem.diary_Calories = newDiary.diary_Calories
        
        newItem.feeling_Hungry = newDiary.feeling_Hungry
        newItem.feeling_Bored = newDiary.feeling_Bored
        newItem.feeling_Thirsty = newDiary.feeling_Thirsty
        newItem.feeling_UnHappy = newDiary.feeling_UnHappy
        
        newItem.diary_photo = newDiary.diary_photo
        newItem.diary_GoingEat = newDiary.diary_GoingEat
        
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
//        if let diary = getById(updatedDiary.objectID){
//            
//            diary_Date = updatedDiary.diary_Date
//            diary_Time = updatedDiary.diary_Time
//            
//            feeling_Hungry = updatedDiary.feeling_Hungry
//            diary_Doing = updatedDiary.diary_Doing
//            diary_AreYou = updatedDiary.diary_AreYou
//            
//            
//            diary_TemptScore = updatedDiary.diary_TemptScore
//            diary_Calories = updatedDiary.diary_Calories
//            
//            feeling_Hungry = updatedDiary.feeling_Hungry
//            feeling_Bored = updatedDiary.feeling_Bored
//            feeling_Thirsty = updatedDiary.feeling_Thirsty
//            feeling_UnHappy = updatedDiary.feeling_UnHappy
//            
//            diary_photo = updatedDiary.diary_photo
//            diary_GoingEat = updatedDiary.diary_GoingEat
//
//        }
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