//
//  ViewController.swift
//  segueApp
//
//  Created by IrfanAkgul on 13/01/2024.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var nameText2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText2.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destionationVC = segue.destination as! SecondViewController
            destionationVC.myName = userName
        }
    }
    
}

