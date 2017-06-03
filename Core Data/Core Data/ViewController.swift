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
        
        // --- Usuario Begin
        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //let context = appDelegate.persistentContainer.viewContext
        
        
        //Listar
//        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Usuario")
//        
//        do {
//            let usuarios = try context.fetch(requisicao)
//            
//            if usuarios.count > 0 {
//                
//                for usuario in usuarios {
//                if let nomeUsuario = (usuario as AnyObject).value(forKey: "nome") {
//                    print(nomeUsuario)
//                }
//                }
//            } else {
//                print("Não existem dados")
//            }
//            
//        }catch {
//            
//        }
        
        //Salvar
        
//        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
//        usuario.setValue("Cesar Augusto", forKey: "nome")
//        usuario.setValue("cesar3", forKey: "loginUsuario")
//        usuario.setValue(20, forKey: "idade")
//        usuario.setValue("123", forKey: "senha")
//        
//        do {
//            try
//            context.save()
//            print("Dados salvos com success")
//        }
//        catch {
//            print("Erro ao salvar")
//        }
//        -- usuarios end
        
        let appDelegateProduto = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegateProduto.persistentContainer.viewContext
        
//        let produto = NSEntityDescription.insertNewObject(forEntityName: "Produtos", into: context)
//        produto.setValue("Arroz", forKey: "nome")
//        produto.setValue("Arroz zaeli", forKey: "descricao")
//        produto.setValue("branco", forKey: "cor")
//        produto.setValue(10.90, forKey: "preco")
//        
//        do {
//            try
//            context.save()
//            print("Dados salvos")
//        } catch {
//            print("Erro ao salvar")
//        }
        
                let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Produtos")
        
                do {
                    let produtos = try context.fetch(requisicao)
        
                    if produtos.count > 0 {
        
                        for produto in produtos {
                        if let nomeProduto = (produto as AnyObject).value(forKey: "nome") {
                            print(nomeProduto)
                        }
                        }
                    } else {
                        print("Não existem dados")
                    }
                    
                }catch {
                    
                }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

