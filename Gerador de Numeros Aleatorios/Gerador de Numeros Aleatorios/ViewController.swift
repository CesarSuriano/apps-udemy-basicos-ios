//
//  ViewController.swift
//  Gerador de Numeros Aleatorios
//
//  Created by Cesar Augusto on 18/04/17.
//  Copyright © 2017 Cesar Augusto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var lblResultado: UILabel!
    
    
    @IBAction func gerarResultado(_ sender: Any) {
        var numAleatorio = arc4random_uniform(11)
        lblResultado.text = String(numAleatorio)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

