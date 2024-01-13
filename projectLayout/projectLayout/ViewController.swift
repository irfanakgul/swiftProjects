//
//  ViewController.swift
//  projectLayout
//
//  Created by IrfanAkgul on 11/01/2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var bday: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newBday = storedBirthday as? String {
            bdayLabel.text = newBday
        }
        
        
        
        // Do any additional setup after loading the view.
    }


    @IBAction func saveClicked(_ sender: Any) {
        print("Button clicked,,,")
        nameLabel.text = Name.text!
        bdayLabel.text = bday.text!
        
        UserDefaults.standard.set(Name.text!, forKey:"Name")
        UserDefaults.standard.set(bday.text!, forKey:"Birthday  ")
    }
}

