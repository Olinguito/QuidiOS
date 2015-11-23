//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class testSwiftWireFrame: NSObject,testSwiftWireFrameProtocol, UIViewControllerTransitioningDelegate
{
    class func presenttestSwiftModule(fromView view: UIViewController)
    {
        // Generating module components
        let view2: testSwiftViewProtocol = testSwiftView()
        let presenter: protocol<testSwiftPresenterProtocol, testSwiftInteractorOutputProtocol> = testSwiftPresenter()
        let interactor: testSwiftInteractorInputProtocol = testSwiftInteractor()
        let APIDataManager: testSwiftAPIDataManagerInputProtocol = testSwiftAPIDataManager()
        let localDataManager: testSwiftLocalDataManagerInputProtocol = testSwiftLocalDataManager()
        let wireFrame: testSwiftWireFrameProtocol = testSwiftWireFrame()
        
        // Connecting
        view2.presenter = presenter
        presenter.view = view2
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        view.modalPresentationStyle = .Custom
        view.transitioningDelegate = self as? UIViewControllerTransitioningDelegate
        view.presentViewController(view2 as! UIViewController, animated: true, completion: nil)
    }
    
    func presenttestSwiftInterfaceFromWindow(window: UIWindow) {
        
        let view2: testSwiftViewProtocol = testSwiftView()
        let presenter: protocol<testSwiftPresenterProtocol, testSwiftInteractorOutputProtocol> = testSwiftPresenter()
        let interactor: testSwiftInteractorInputProtocol = testSwiftInteractor()
        let APIDataManager: testSwiftAPIDataManagerInputProtocol = testSwiftAPIDataManager()
        let localDataManager: testSwiftLocalDataManagerInputProtocol = testSwiftLocalDataManager()
        let wireFrame: testSwiftWireFrameProtocol = testSwiftWireFrame()
        
        // Connecting
        view2.presenter = presenter
        presenter.view = view2
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        
        (view2 as! UIViewController).modalPresentationStyle = .Custom
        (view2 as! UIViewController).transitioningDelegate = self
        
        window.rootViewController = view2 as? UIViewController
    }
    
    func goThere() {

    }
    
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        print("Concha de tu abuela")
        return testSwiftTransition()
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
}