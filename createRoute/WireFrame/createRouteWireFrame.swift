//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit


class createRouteWireFrame: NSObject, createRouteWireFrameProtocol, UIViewControllerTransitioningDelegate
{
    class func presentcreateRouteModule(fromView view: UIViewController)
    {
        // Generating module components
        let view2: createRouteViewProtocol                                                         = createRouteView()
        let presenter: protocol<createRoutePresenterProtocol, createRouteInteractorOutputProtocol> = createRoutePresenter()
        let interactor: createRouteInteractorInputProtocol                                         = createRouteInteractor()
        let APIDataManager: createRouteAPIDataManagerInputProtocol                                 = createRouteAPIDataManager()
        let localDataManager: createRouteLocalDataManagerInputProtocol                             = createRouteLocalDataManager()
        let wireFrame: createRouteWireFrameProtocol                                                = createRouteWireFrame()
        
        // Connecting
        view2.presenter             = presenter
        presenter.view              = view2
        presenter.wireFrame         = wireFrame
        presenter.interactor        = interactor
        interactor.presenter        = presenter
        interactor.APIDataManager   = APIDataManager
        interactor.localDatamanager = localDataManager
        
        (view2 as! UIViewController).modalPresentationStyle = .Custom
        (view2 as! UIViewController).modalTransitionStyle   = .CrossDissolve
        
        (view2 as! UIViewController).transitioningDelegate  = self as! UIViewControllerTransitioningDelegate
        
        view.presentViewController(view2 as! UIViewController, animated: true, completion: nil)
    }
    
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        print("dsfsdfsdf")
        return createRouteTransition()
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        print("Concha de tu abuela")
        return createRouteTransition()
    }
    
}