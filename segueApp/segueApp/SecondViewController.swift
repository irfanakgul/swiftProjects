//
//  SecondViewController.swift
//  segueApp
//
//  Created by IrfanAkgul on 13/01/2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    



}
