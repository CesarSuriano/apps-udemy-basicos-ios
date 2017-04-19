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
    
    @IBOutlet weak var legendaFrase: UILabel!
    @IBAction func novaFrase(_ sender: AnyObject) {
        
        var frases: [String] = []
        var numeroAleatorio = arc4random_uniform(3)
        frases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos.")
        frases.append("O sucesso normalmente vem para quem está ocupado demais para procurar por ele.")
        frases.append("Se você não está disposto a arriscar, esteja disposto a uma vida comum.")
        
        legendaFrase.text = String( frases[ Int( numeroAleatorio ) ] )
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

