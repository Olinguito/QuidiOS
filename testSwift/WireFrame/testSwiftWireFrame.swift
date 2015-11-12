//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class testSwiftWireFrame: testSwiftWireFrameProtocol
{
    class func presenttestSwiftModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: testSwiftViewProtocol = testSwiftView()
        var presenter: protocol<testSwiftPresenterProtocol, testSwiftInteractorOutputProtocol> = testSwiftPresenter()
        var interactor: testSwiftInteractorInputProtocol = testSwiftInteractor()
        var APIDataManager: testSwiftAPIDataManagerInputProtocol = testSwiftAPIDataManager()
        var localDataManager: testSwiftLocalDataManagerInputProtocol = testSwiftLocalDataManager()
        var wireFrame: testSwiftWireFrameProtocol = testSwiftWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}