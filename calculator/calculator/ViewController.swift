//
//  ViewController.swift
//  calculator
//
//  Created by IrfanAkgul on 11/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firsttext: UITextField!
    
    @IBOutlet weak var secondtext: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumclicked(_ sender: Any) {
        
        if let firstNumber = Int(firsttext.text!) {
            
            if let secondNumber = Int(secondtext.text!) {
                
                let resultshow = firstNumber + secondNumber
                result.text = String(resultshow)
                
            } else {
                result.text = "Give a number!"}
        } else {
            result.text = "Give a number!"
        }
        
    }
    
    @IBAction func minusclicked(_ sender: Any) {
        
        if let firstNumber = Int(firsttext.text!) {
            
            if let secondNumber = Int(secondtext.text!) {
                
                let resultshow = firstNumber - secondNumber
                result.text = String(resultshow)
                
            } else {
                result.text = "Give a number!"}
        } else {
            result.text = "Give a number!"
        }
    }
    
    
    @IBAction func multiplyclicked(_ sender: Any) {
        
        if let firstNumber = Int(firsttext.text!) {
            
            if let secondNumber = Int(secondtext.text!) {
                
                let resultshow = firstNumber * secondNumber
                result.text = String(resultshow)
                
            } else {
                result.text = "Give a number!"}
        } else {
            result.text = "Give a number!"
        }
    }
    
    
    
    @IBAction func divideclicked(_ sender: Any) {
        if let firstNumber = Int(firsttext.text!) {
            
            if let secondNumber = Int(secondtext.text!) {
                
                let resultshow = firstNumber / secondNumber
                result.text = String(resultshow)
                
            } else {
                result.text = "Give a number!"}
        } else {
            result.text = "Give a number!"
        }
    }
    
    
    @IBAction func clearBut(_ sender: Any) {
        result.text = ""
    }
    
    
    
    
    
    
}

