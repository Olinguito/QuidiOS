//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

protocol testSwiftViewProtocol: class
{
    var presenter: testSwiftPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol testSwiftWireFrameProtocol: class
{
    static func presenttestSwiftModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol testSwiftPresenterProtocol: class
{
    var view: testSwiftViewProtocol? { get set }
    var interactor: testSwiftInteractorInputProtocol? { get set }
    var wireFrame: testSwiftWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol testSwiftInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol testSwiftInteractorInputProtocol: class
{
    var presenter: testSwiftInteractorOutputProtocol? { get set }
    var APIDataManager: testSwiftAPIDataManagerInputProtocol? { get set }
    var localDatamanager: testSwiftLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol testSwiftDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol testSwiftAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol testSwiftLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
