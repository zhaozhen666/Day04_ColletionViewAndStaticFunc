//
//  ViewController.swift
//  CollectionView
//
//  Created by zhaozhen on 16/12/11.
//  Copyright © 2016年 zhaozhen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     var interests = Interest.createInterests()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController : UICollectionViewDataSource {
    
    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCell", for: indexPath) as! ImgCollectionViewCell
        
        cell.interest = self.interests[indexPath.item]
        
        return cell
        
    }
    
}


