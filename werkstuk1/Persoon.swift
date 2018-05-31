//
//  Persoon.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit
import CoreLocation

class Persoon {
    var naam: String
    var voornaam: String
    var adres: Adres
    var coordinaten: CLLocationCoordinate2D
    var telefoonnummer: String
    var foto: UIImage
    
    init() {
        naam = ""
        voornaam = ""
        adres = Adres()
        coordinaten = CLLocationCoordinate2D()
        telefoonnummer = ""
        foto = #imageLiteral(resourceName: "weird")
    }
    
    init(naam: String, voornaam: String, adres: Adres, coordinaten: CLLocationCoordinate2D, telefoonnummer: String, foto: UIImage) {
        self.naam = naam
        self.voornaam = voornaam
        self.adres = adres
        self.coordinaten = coordinaten;
        self.telefoonnummer = telefoonnummer;
        self.foto = foto
    }
}
