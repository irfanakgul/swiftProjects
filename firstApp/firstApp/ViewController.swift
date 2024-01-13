//
//  ViewController.swift
//  firstApp
//
//  Created by IrfanAkgul on 11/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeClicked(_ sender: Any) {
        imageView1.image = UIImage(named:"posters-galatasaray")
        print("Photo changed..")
        
    }
    
}

