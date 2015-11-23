//
//  TestTransition.swift
//  Quid
//
//  Created by Jorge Raul Ovalle Zuleta on 11/23/15.
//  Copyright © 2015 jorgeovalle. All rights reserved.
//

import UIKit

class TestTransition2: NSObject, UIViewControllerTransitioningDelegate {

    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        print("Entra aca por l menos?")
        return createRouteTransition()
    }
    

}
