//
//  UIViewControllerExtension.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 12/4/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

protocol MasterViewControllerAppearance {
    func showLeftBarButtonItem()
}


extension UIViewController: MasterViewControllerAppearance {
    func showLeftBarButtonItem() {
        // Show expand & collapse button
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        
        // Show back button
        navigationItem.leftItemsSupplementBackButton = true
    }
}

