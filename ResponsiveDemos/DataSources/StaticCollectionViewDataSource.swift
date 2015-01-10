//
//  StaticCollectionViewDataSource.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 12/10/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

let reuseIdentifier = "StaticCollectionViewCell"

class StaticCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var data = [
        "Mayo Clinic",
        "Cleveland Clinic",
        "Hospital of Cornell",
        "Drake University Hospital",
        "Brigham Hospital",
        "Massachuesetts Hospital",
        "UCLA Medical Center",
        "Cedars Medical Center",
        "St. Francis Hospital",
        "Mount Sinai Hospital"
    ]
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as StaticCollectionViewCell
        
        cell.clinicName.text = data[indexPath.row]
        
        return cell
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
}
