//
//  ViewController.swift
//  TableView
//
//  Created by Sebastian Asp on 2017-05-26.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var nitroEquip : [NitroClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        nitroEquip = makeNitroArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nitroEquip.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let equip = nitroEquip[indexPath.row]
        cell.textLabel?.text = equip.header
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let equipment = nitroEquip[indexPath.row]
        performSegue(withIdentifier: "tableViewSegue", sender: equipment)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! NitroClass
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeNitroArray() -> [NitroClass] {
        let Step1 = NitroClass()
        Step1.header = "Step 1"
        Step1.definition = "The Installation"
        Step1.category = "Plug in"
        Step1.year = 2017
        
        let Step2 = NitroClass()
        Step2.header = "Step 2"
        Step2.definition = "The Installation"
        Step2.category = "Plug in"
        Step2.year = 2013
        
        let Step3 = NitroClass()
        Step3.header = "Step 3"
        Step3.definition = "The Installation"
        Step3.category = "Plug in"
        Step3.year = 2010
        
        return [Step1,Step2,Step3]
    }
}

