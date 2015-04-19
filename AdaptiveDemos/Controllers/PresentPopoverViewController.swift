//
//  PopoverViewController.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 11/29/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class PresentPopoverViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showLeftBarButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handlePopoverPressed(sender: UIBarButtonItem) {
        if let popoverVC = storyboard?.instantiateViewControllerWithIdentifier("myPopover") as? UIViewController {
            popoverVC.modalPresentationStyle = .Popover
            if let popoverController = popoverVC.popoverPresentationController {
                popoverController.barButtonItem = sender
                popoverController.permittedArrowDirections = .Any
                popoverController.delegate = self
                presentViewController(popoverVC, animated: true, completion: nil)
            }
        }
    }

}

// MARK: - UIPopoverPresentationControllerDelegate
extension PresentPopoverViewController: UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .FullScreen
    }
    
    // NOTE: iPhone 6 Plus in landscape shows popover as FormSheet.  Implement this delegate method for desired behavior.
//    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
//        return .FullScreen
//    }
    
    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        return UINavigationController(rootViewController: controller.presentedViewController)
    }
}