//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class createRoutePresenter: createRoutePresenterProtocol, createRouteInteractorOutputProtocol
{
    weak var view: createRouteViewProtocol?
    var interactor: createRouteInteractorInputProtocol?
    var wireFrame: createRouteWireFrameProtocol?
    
    init() {}
}