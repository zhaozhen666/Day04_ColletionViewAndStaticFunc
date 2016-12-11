//
//  ImgCollectionViewCell.swift
//  CollectionView
//
//  Created by zhaozhen on 16/12/11.
//  Copyright © 2016年 zhaozhen. All rights reserved.
//

import UIKit

class ImgCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImg: UIImageView!
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        featuredImg?.image! = interest.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}
