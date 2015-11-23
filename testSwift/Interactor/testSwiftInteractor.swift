//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class testSwiftInteractor: testSwiftInteractorInputProtocol
{
    weak var presenter: testSwiftInteractorOutputProtocol?
    var APIDataManager: testSwiftAPIDataManagerInputProtocol?
    var localDatamanager: testSwiftLocalDataManagerInputProtocol?
    
    init() {}
    
    func test3() {
        print("Interactor")
        localDatamanager?.saveLocal()
    }
}