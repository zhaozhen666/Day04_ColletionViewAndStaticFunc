//
//  Interest.swift
//  CollectionView
//
//  Created by zhaozhen on 16/12/11.
//  Copyright © 2016年 zhaozhen. All rights reserved.
//

import UIKit

class Interest{
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage!
    init( featuredImage: UIImage!)
    {
        self.featuredImage = featuredImage
        numberOfMembers = 1
        numberOfPosts = 1
    }
    static func createInterests() -> [Interest]
    {
        return [
            Interest(featuredImage: UIImage(named: "hello")!),
            Interest( featuredImage: UIImage(named: "dudu")!),
            Interest(featuredImage: UIImage(named: "bodyline")!),
            Interest(featuredImage: UIImage(named: "wave")!),
            Interest(featuredImage: UIImage(named: "darkvarder")!),
            Interest(featuredImage: UIImage(named: "hhhhh")!),
        ]
    }
}
