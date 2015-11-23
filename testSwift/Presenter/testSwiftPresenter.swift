//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class testSwiftPresenter: testSwiftPresenterProtocol, testSwiftInteractorOutputProtocol
{
    weak var view: testSwiftViewProtocol?
    var interactor: testSwiftInteractorInputProtocol?
    var wireFrame: testSwiftWireFrameProtocol?
    
    
    
    init() {}
    
    func test() {
        print("Hola mundooo!!!!!")
//        interactor?.test3()
//        wireFrame?.goThere()
        createRouteWireFrame.presentcreateRouteModule(fromView: view as! UIViewController)
    }
    
    func test2() {
        
    }
}