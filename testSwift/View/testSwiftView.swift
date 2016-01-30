//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit
import Mapbox

class testSwiftView: UIViewController, testSwiftViewProtocol
{
    var presenter: testSwiftPresenterProtocol?
    
    var transitioningBackgroundView : UIView = UIView()
    
    
    override func viewDidAppear(animated: Bool) {
        createUI()
    }
    
    func createUI(){
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 40.7326808, longitude: -73.9843407), zoomLevel: 12, animated: false)
        view.addSubview(mapView)
        
        let pr = UIView(frame: CGRectMake(300,300,100,100))
        pr.backgroundColor = UIColor.greenColor()
        pr.center = self.view.center
        self.view.addSubview(pr)
        
        let a = UIButton(frame: CGRectMake(120,200,50,50))
        a.backgroundColor = UIColor.blueColor()
        a.center = self.view.center
        a.addTarget(self, action: Selector("testEvent:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(a)
    }
    
    func createContraints(){
    
    }
    
    
    
    func testEvent(sender:UIButton){
        presenter?.test()
    }
    
    func reloadTest() {
        print("reload")
        let pr = UIView(frame: CGRectMake(0,0,100,100))
        pr.backgroundColor = UIColor.greenColor()
        pr.center = self.view.center
        self.view.addSubview(pr)
    }
}