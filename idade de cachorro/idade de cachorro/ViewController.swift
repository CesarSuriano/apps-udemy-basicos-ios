//
//  ViewController.swift
//  idade de cachorro
//
//  Created by Cesar Augusto on 30/12/16.
//  Copyright © 2016 Cesar Augusto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var campoIdade: UITextField!
    @IBOutlet weak var legendaResult: UILabel!

    @IBAction func descobrirIdade(_ sender: UIButton) {
        var idade = Int(campoIdade.text!)
        idade = idade! * 7
        
        legendaResult.text = String(idade!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

