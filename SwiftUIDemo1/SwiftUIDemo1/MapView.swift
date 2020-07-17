
//
//  MapView.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/17.
//  Copyright © 2020 jixin. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        let locationManager = CLLocationManager()        
        if CLLocationManager.authorizationStatus() == CLAuthorizationStatus.denied {
            locationManager.requestWhenInUseAuthorization()
        }
        
        let mapView = MKMapView(frame: .zero)
//        mapView.showsScale = true
//        mapView.showsCompass = true
//        mapView.showsBuildings = true
//        mapView.showsUserLocation = true
//        mapView.showsLargeContentViewer = true
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion.init(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
//        let mapView = uiView as MKMapView
//        mapView.showsScale = true
//        mapView.showsCompass = true
//        mapView.showsBuildings = true
//        mapView.showsUserLocation = true
//        mapView.showsLargeContentViewer = true
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
