//
//  PAViewController.swift
//  AlquilaYa
//
//  Created by Tismart on 24/04/23.
//

import UIKit

class PAViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var dirección: UILabel!
    
    
    @IBOutlet weak var nombre2: UILabel!
    
    @IBOutlet weak var dirección2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = ""
        dirección.text = ""
        nombre2.text = ""
        dirección2.text = ""
    }
    
    @IBAction func getContactoAction(_ sender: Any) {
        
        NetworkingProvider.shared.getContacto(id: 3){
            (contacto) in
            
            self.nombre.text = contacto.street
            self.dirección.text = contacto.suite
        }failure: { (error) in
            
            self.nombre.text = error.debugDescription
            
        }
        
        
    }
}
