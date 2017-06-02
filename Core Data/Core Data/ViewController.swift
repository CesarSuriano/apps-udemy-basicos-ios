//
//  ViewController.swift
//  Core Data
//
//  Created by Cesar Augusto on 02/06/17.
//  Copyright © 2017 Cesar Augusto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        usuario.setValue("Cesar Augusto", forKey: "nome")
        usuario.setValue("cesar", forKey: "loginUsuario")
        usuario.setValue(20, forKey: "idade")
        usuario.setValue("123", forKey: "senha")
        
        do {
            try
            context.save()
            print("Dados salvos com success")
        }
        catch {
            print("Erro ao salvar")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

