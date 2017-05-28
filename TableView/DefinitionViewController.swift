//
//  DefinitionViewController.swift
//  TableView
//
//  Created by Sebastian Asp on 2017-05-26.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = NitroClass()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.header
        definitionLabel.text = emoji.definition
        categoryLabel.text = emoji.category
        yearLabel.text = "\(emoji.year)"
        
        
        
        
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
