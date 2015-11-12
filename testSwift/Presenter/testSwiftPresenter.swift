//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class testSwiftPresenter: testSwiftPresenterProtocol, testSwiftInteractorOutputProtocol
{
    weak var view: testSwiftViewProtocol?
    var interactor: testSwiftInteractorInputProtocol?
    var wireFrame: testSwiftWireFrameProtocol?
    
    init() {}
}