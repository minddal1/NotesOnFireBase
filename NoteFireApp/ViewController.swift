//
//  ViewController.swift
//  NoteFireApp
//
//  Created by admin on 27/06/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import FirebaseDatabase


class ViewController: UIViewController {
    
    let ref = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
            
        
            //ref.child("someid/name").setValue("Mikey")
            
        ref.child("-MAv-abpzireZKbjMfS1/name").observeSingleEvent(of: .value) { (snapshot) in
            let name = snapshot.value as? String
        }
        
            //ref.childByAutoId().setValue(["name":"John", "age": 99, "role": "user"])
    }
    
    @IBOutlet weak var notesField: UITextView!
    
    
    @IBAction func SaveBtn(_ sender: Any) {
       let notes = notesField.text
        ref.child("notes/new").setValue(notes)
    }
    
}

