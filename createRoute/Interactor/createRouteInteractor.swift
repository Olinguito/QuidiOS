//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class createRouteInteractor: createRouteInteractorInputProtocol
{
    weak var presenter: createRouteInteractorOutputProtocol?
    var APIDataManager: createRouteAPIDataManagerInputProtocol?
    var localDatamanager: createRouteLocalDataManagerInputProtocol?
    
    init() {}
}