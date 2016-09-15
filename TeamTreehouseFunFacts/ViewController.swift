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
    @IBOutlet weak var funFactButton: UIButton!
    
    var factModel = FactModel()
    var colorModel = ColorModel()

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
        let newColor = colorModel.getRandomColor()
        view.backgroundColor = newColor
        funFactButton.tintColor = newColor
        
        funFactLabel.text = factModel.getRandomFact()
    }
}

