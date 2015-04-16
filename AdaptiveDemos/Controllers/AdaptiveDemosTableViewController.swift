//
//  AdaptiveDemosTableViewController.swift
//  AdaptiveDemos
//
//  Created by Brad Broulik on 11/26/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class AdaptiveDemosTableViewController: UITableViewController {

    private var collapseDetailViewController = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        splitViewController?.delegate = self
        splitViewController?.preferredDisplayMode = .AllVisible // Prefer to have all views visible.  The default shows DetailViewController in iPad initially.
    }
                    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        println("unwind from popover")
    }

}

// MARK: Table View Delegate
extension AdaptiveDemosTableViewController: UITableViewDelegate {
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        collapseDetailViewController = false
    }
    
}

// MARK: - UISplitViewControllerDelegate
extension AdaptiveDemosTableViewController: UISplitViewControllerDelegate {
    
    /* Make the master view displayed first on iPhone 6 Plus in portrait. */
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
        return collapseDetailViewController
    }
    
}