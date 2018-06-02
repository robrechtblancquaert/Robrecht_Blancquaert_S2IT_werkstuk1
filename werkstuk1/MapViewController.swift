//
//  MapViewController.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    var personen = [Persoon]()
    var locationManager = CLLocationManager()
    
    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personen.append(Persoon(naam: "Blancquaert", voornaam: "Robrecht", adres: Adres(straat: "processieweg", huisnummer: "33", postcode: "3130", gemeente: "Betekom"), coordinaten: CLLocationCoordinate2D(latitude: 50.842491, longitude: 4.324516), telefoonnummer: "0474733086", foto: #imageLiteral(resourceName: "weird")))
        personen.append(Persoon(naam: "Taelemans", voornaam: "Dylan", adres: Adres(straat: "hacker", huisnummer: "420", postcode: "0000", gemeente: "Cave"), coordinaten: CLLocationCoordinate2D(latitude: 50.844151, longitude: 4.326479), telefoonnummer: "09999999", foto: #imageLiteral(resourceName: "hackerman")))
        personen.append(Persoon(naam: "Kruf", voornaam: "Femke", adres: Adres(straat: "kaasstraat", huisnummer: "20", postcode: "6512", gemeente: "Hollandaise"), coordinaten: CLLocationCoordinate2D(latitude: 51.437089, longitude: 5.478968), telefoonnummer: "123456789", foto: #imageLiteral(resourceName: "Red")))
        personen.append(Persoon(naam: "Muys", voornaam: "Tijl", adres: Adres(straat: "Kerkstraat", huisnummer: "640", postcode: "1080", gemeente: "Gemeentedorp"), coordinaten: CLLocationCoordinate2D(latitude: 50.803172, longitude: 4.379666), telefoonnummer: "047856901", foto: #imageLiteral(resourceName: "Tijl")))
        personen.append(Persoon(naam: "Ambroos", voornaam: "Fons", adres: Adres(straat: "Langstraat", huisnummer: "800", postcode: "3180", gemeente: "Langdorp"), coordinaten: CLLocationCoordinate2D(latitude: 50.994796, longitude: 4.870444), telefoonnummer: "098746512", foto: #imageLiteral(resourceName: "Fons")))
        for persoon in personen {
            let annotation = MyAnnotation(coordinate: persoon.coordinaten, title: persoon.voornaam + " " + persoon.naam)
            self.mapView.addAnnotation(annotation)
        }
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
        mapView.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
