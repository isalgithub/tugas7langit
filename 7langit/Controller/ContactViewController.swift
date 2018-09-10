//
//  ContactViewController.swift
//  7langit
//
//  Created by Faishal Alif on 9/8/18.
//  Copyright © 2018 Faishal Alif. All rights reserved.
//

import UIKit
import CoreData

class ContactViewController: UIViewController {
    
    var fullname = ["Faishal Alif"]
    var img = [UIImage(named: "isal")]
    
//    var contacts: [NSManagedObject] = []
    
    

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    
//    func fetch() {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//        let managedObjectContext = appDelegate.persistentContainer.viewContext
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Contact")
//        do {
//            contacts = try managedObjectContext.fetch(fetchRequest) as! [NSManagedObject]
//        } catch let error as NSError {
//            print("Could not fetch. \(error)")
//        }
//    }
//
//    func save(isiLabel: String) {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//        let managedObjectContext = appDelegate.persistentContainer.viewContext
//        guard let entity = NSEntityDescription.entity(forEntityName:"Contact", in: managedObjectContext) else { return }
//        let contact = NSManagedObject(entity: entity, insertInto: managedObjectContext)
//        contact.setValue(isiLabel, forKey: "firstname")
//        contact.setValue(isiLabel, forKey: "lastname")
//        contact.setValue(isiLabel, forKey: "mobile")
//        contact.setValue(isiLabel, forKey: "email")
//
//        do {
//            try managedObjectContext.save()
//            self.contacts.append(contact)
//        } catch let error as NSError {
//            print("Couldn't save. \(error)")
//        }
//    }
//
//    func update(indexPath: IndexPath, isiLabel: String) {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//        let managedObjectContext = appDelegate.persistentContainer.viewContext
//        let contact = contacts[indexPath.row]
//        contact.setValue(isiLabel, forKey: "firstname")
//        contact.setValue(isiLabel, forKey: "lastname")
//        contact.setValue(isiLabel, forKey: "mobile")
//        contact.setValue(isiLabel, forKey: "email")
//        do {
//            try managedObjectContext.save()
//            contacts[indexPath.row] = contact
//        } catch let error as NSError {
//            print("Couldn't update. \(error)")
//        }
//    }
//
//    func delete(_ contact: NSManagedObject, at indexPath: IndexPath) {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//        let managedObjectContext = appDelegate.persistentContainer.viewContext
//        managedObjectContext.delete(contact)
//        contacts.remove(at: indexPath.row)
//    }
    

}

extension ContactViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fullname.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ContactTableViewCell
        
        
        cell?.profileImg.image = img[indexPath.row]
        cell?.fullname.text = fullname[indexPath.row]
        
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    // unwind segue
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    
    

    
    
}

