//
//  SecondViewController.swift
//  NoteFireApp
//
//  Created by admin on 28/06/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class SecondViewController: UIViewController {
    
    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.child("notes/new").observeSingleEvent(of: .value) { (snapshot) in
            let notes = snapshot.value as? String
        }
        
        
    }
    @IBOutlet weak var notesCelll: UITableViewCell!
    
    @IBOutlet weak var noteField: UITextField!
    
    
    
    @IBAction func UpdateBtn(_ sender: Any) {
        
        ref.child("notes/new").observeSingleEvent(of: .value) { (snapshot) in
        let notes = snapshot.value as? String
            self.noteField.text = notes
            print(notes)
        }
        
        

        
    }
    



}
