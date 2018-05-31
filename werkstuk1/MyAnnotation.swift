//
//  MyAnnotation.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//
import UIKit
import MapKit

class MyAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    override init() {
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init (coordinate: CLLocationCoordinate2D, title: String)
    {
        self.coordinate = coordinate
        self.title = title
        
    }
}
