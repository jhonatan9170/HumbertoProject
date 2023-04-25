//
//  ViewController.swift
//  AlquilaYa
//
//  Created by Tismart on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    let imagenes = ["Departamento","Casa","Casadeplaya"]
    let texto = ["Alquiler Departamento","Alquiler Casa","Alquiler Casa de playa"]
    var a:Int!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        collectionView.dataSource = self
      
        collectionView.backgroundColor = .green
        
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "myCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
         }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? myCollectionViewCell
        
        let imageName = imagenes[indexPath.row]
       
        cell?.imagen.image = UIImage(named: imageName)
        cell?.boton.setTitle(texto[indexPath.row], for: .normal)
        print(indexPath.row)
        return cell!
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        a = indexPath.row
        switch  a! {
            
        case 0:
            performSegue(withIdentifier: "DEPAS", sender: self)
        case 1:
            performSegue(withIdentifier: "CASAS", sender: self)
        case 2:
            performSegue(withIdentifier: "CASASDEPLAYA", sender: self)
        default:
            print("error")
            
        }
        
  }
}


