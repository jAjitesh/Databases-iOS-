//
//  ViewController.swift
//  Data Storage(Ph #)
//
//  Created by Ajitesh on 10/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var finalOutcome: UILabel!
    
    
    
    @IBAction func button(_ sender: Any) {
       let noObject = UserDefaults.standard.object(forKey: textField.text!)
        if let name = noObject as? String {
            
            finalOutcome.text = String(name)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set("9885510099" , forKey: "Rob")
        UserDefaults.standard.set("9001230099" , forKey: "Mary")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

