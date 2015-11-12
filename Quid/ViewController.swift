//
//  ViewController.swift
//  Quid
//
//  Created by Jorge Raul Ovalle Zuleta on 10/14/15.
//  Copyright © 2015 jorgeovalle. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 40.7326808, longitude: -73.9843407), zoomLevel: 12, animated: false)
        view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

