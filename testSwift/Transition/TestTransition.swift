//
//  TestTransition.swift
//  Quid
//
//  Created by Jorge Raul Ovalle Zuleta on 11/23/15.
//  Copyright © 2015 jorgeovalle. All rights reserved.
//

import UIKit

class TestTransition: NSObject, UIViewControllerTransitioningDelegate {

    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return testSwiftTransition()
    }
}
