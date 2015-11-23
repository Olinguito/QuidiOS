//
//  AppDependencies.swift
//  Quid
//
//  Created by Jorge Raul Ovalle Zuleta on 11/11/15.
//  Copyright © 2015 jorgeovalle. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    var testWireframe = testSwiftWireFrame()
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        testWireframe.presenttestSwiftInterfaceFromWindow(window)
        print("Presentando vista 1")
    }
    
    func configureDependencies() {
//        let coreDataStore = CoreDataStore()
//        let clock         = DeviceClock()
//        let rootWireframe = RootWireframe()
//        
//        let listPresenter   = ListPresenter()
//        let listDataManager = ListDataManager()
//        let listInteractor  = ListInteractor(dataManager: listDataManager, clock: clock)
//        
//        let addWireframe   = AddWireframe()
//        let addInteractor  = AddInteractor()
//        let addPresenter   = AddPresenter()
//        let addDataManager = AddDataManager()
//        
//        listInteractor.output = listPresenter
//        
//        listPresenter.listInteractor = listInteractor
//        listPresenter.listWireframe = listWireframe
//        
//        listWireframe.addWireframe = addWireframe
//        listWireframe.listPresenter = listPresenter
//        listWireframe.rootWireframe = rootWireframe
//        
//        listDataManager.coreDataStore = coreDataStore
//        
//        addInteractor.addDataManager = addDataManager
//        
//        addWireframe.addPresenter = addPresenter
//        
//        addPresenter.addWireframe = addWireframe
//        addPresenter.addModuleDelegate = listPresenter
//        addPresenter.addInteractor = addInteractor
//        
//        addDataManager.dataStore = coreDataStore
    }
}