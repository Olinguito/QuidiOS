//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

protocol createRouteViewProtocol: class
{
    var presenter: createRoutePresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol createRouteWireFrameProtocol: class
{
    static func presentcreateRouteModule(fromView view: UIViewController)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol createRoutePresenterProtocol: class
{
    var view: createRouteViewProtocol? { get set }
    var interactor: createRouteInteractorInputProtocol? { get set }
    var wireFrame: createRouteWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol createRouteInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol createRouteInteractorInputProtocol: class
{
    var presenter: createRouteInteractorOutputProtocol? { get set }
    var APIDataManager: createRouteAPIDataManagerInputProtocol? { get set }
    var localDatamanager: createRouteLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol createRouteDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol createRouteAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol createRouteLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
