//
//  DefinitionViewController.swift
//  TableView
//
//  Created by Sebastian Asp on 2017-05-26.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "no emoji"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "Step 1\n The installation" {
            definitionLabel.text = "Please plugin in the gas..."
        }
        
        if emoji == "Step 2 - Turn on gas" {
            definitionLabel.text = "Please plugin in..."
        }
        
        if emoji == "Step 3 - The shake" {
            definitionLabel.text = "Please plugin in..."
        }
        
        if emoji == "Step 4 - Serve" {
            definitionLabel.text = "Please plugin in..."
        }
        
        if emoji == "Step 5 - Drink" {
            definitionLabel.text = "Please plugin in..."
        }
        
        if emoji == "Step 6 - Refill" {
            definitionLabel.text = "Please plugin in..."
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}


//"Step 2 - Turn on gas",
//"Step 3 - The shake",
//"Step 4 - Serve",
//"Step 5 - Drink",
//"Step 6 - Refill"
