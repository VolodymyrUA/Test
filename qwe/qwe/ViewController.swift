//
//  ViewController.swift
//  qwe
//
//  Created by Володимир Смульський on 1/10/18.
//  Copyright © 2018 Володимир Смульський. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // vjvkcdkjfhkhcfkihbkvvfki vova
        
        textF.delegate = self
        textF.backgroundColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) ->  Bool {
        
        let set = CharacterSet.decimalDigits
        
        // enother version of if else below
        //        guard let has = string.rangeOfCharacter(from: set) else {
        //
        //            throw Error()
        //            //return true
        //        }
        //        return has.isEmpty
        
        if let has = string.rangeOfCharacter(from: set) {
            return has.isEmpty
        } else {
            return true
        }
        //enother version of if else above
        // return string.rangeOfCharacter(from: set)?.isEmpty ?? true
        
        //return true
    }
}

