//
//  MostlyFluidViewController.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 12/28/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class MostlyFluidViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showLeftBarButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}