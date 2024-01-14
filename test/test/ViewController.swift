//
//  ViewController.swift
//  test
//
//  Created by IrfanAkgul on 14/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        
        resField.text = but1 * but2 
        print("buttton tiklandi,,")
    }
    
   
}

