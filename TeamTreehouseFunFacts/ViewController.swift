//
//  ViewController.swift
//  TeamTreehouseFunFacts
//
//  Created by Kevin Kirsche on 9/13/16.
//  Copyright © 2016 Kevin Kirsche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    var factModel = FactModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factModel.getFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        funFactLabel.text = factModel.nextFact()
    }
}

