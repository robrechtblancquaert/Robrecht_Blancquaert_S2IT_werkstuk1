//
//  PersoonViewController.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class PersoonViewController: UIViewController {

    var persoon = Persoon()
    
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var tel: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.naam.text = persoon.voornaam + " " + persoon.naam
        self.tel.text = persoon.telefoonnummer
        self.foto.image = persoon.foto
        self.adres.text = persoon.adres.straat + " " + persoon.adres.huisnummer + ", " + persoon.adres.postcode + " " + persoon.adres.gemeente
        
        let center = CLLocationCoordinate2D(latitude: persoon.coordinaten.latitude, longitude: persoon.coordinaten.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        map.setRegion(region, animated: true)
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
