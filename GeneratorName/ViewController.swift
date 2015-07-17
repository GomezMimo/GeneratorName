//
//  ViewController.swift
//  GeneratorName
//
//  Created by Juan Gomez on 15/07/15.
//  Copyright (c) 2015 Codes and Tags. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var vowels = ["a", "e", "i", "o", "u"]
    var consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "n", "l","p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var result = ""
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func launchButton(sender: AnyObject) {
        var newString = textField.text
        var arrayString = newString.componentsSeparatedByString(" ")
        println(arrayString)
        var myString = count(textField.text) / 2
        println(myString)
        for var i = 0 ; i < (myString+1) ; i++ {
            var rand1 = Int(arc4random_uniform(5))
            var rand2 = Int(arc4random_uniform(20))
            if arrayString[i] == "C"{
                println(consonants[rand2])
                result += consonants[rand2]
            }else if arrayString[i] == "V"{
                println(vowels[rand1])
                result += vowels[rand1]
            }else{
                println("naranjas")
            }
        }
        println(result)
        resultLabel.text = "Name: " + result
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func consButton(sender: AnyObject) {
        textField.text = "\(textField.text) C"
        println(textField.text)
    }
    @IBAction func vowelButton(sender: AnyObject) {
        textField.text = "\(textField.text) V"
        println(textField.text)
    }
    
    @IBOutlet weak var vowelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.userInteractionEnabled = false
        println(textField.text)
        
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool
    {
        let maxLength = 4
        let currentString: NSString = textField.text
        let newString: NSString = currentString.stringByReplacingCharactersInRange(range, withString: string)
        return newString.length <= maxLength
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

