//
//  StaticCollectionViewController.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 12/10/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class StaticCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        showLeftBarButtonItem()
    }
    
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView!,
        layout collectionViewLayout: UICollectionViewLayout!,
        sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
            return CGSize(width: 300, height: 300)
    }
    
    func collectionView(collectionView: UICollectionView!,
        layout collectionViewLayout: UICollectionViewLayout!,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 40.0, left: 40.0, bottom: 40.0, right: 40.0)
    }

}
