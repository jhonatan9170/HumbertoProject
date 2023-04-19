//
//  ViewController.swift
//  AlquilaYa
//
//  Created by Tismart on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    let imagenes = ["alquiler.jpg","alquilerTemporal.jpg"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        collectionView.dataSource = self
      
        collectionView.backgroundColor = .red
        
    //collectionView.delegate = self
        collectionView.register(UINib(nibName: "myCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
         }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? myCollectionViewCell
        
        let imageName = imagenes[indexPath.row]
        cell?.imagen.image = UIImage(named: imageName)
        return cell!
    }
}



