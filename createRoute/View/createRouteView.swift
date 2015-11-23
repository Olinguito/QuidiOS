//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class createRouteView: UIViewController, createRouteViewProtocol
{
    var presenter: createRoutePresenterProtocol?
    var transitioningBackgroundView : UIView = UIView()
    
    
    override func viewWillAppear(animated: Bool) {
        self.view.backgroundColor = UIColor.blueColor()
    }
    
}