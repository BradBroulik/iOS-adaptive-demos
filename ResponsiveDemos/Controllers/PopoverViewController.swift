//
//  PopoverViewController.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 11/29/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "Popover"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: "dismissPressed:")
    }
    
    @IBAction func dismissPressed(sender: AnyObject) {
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }

}
