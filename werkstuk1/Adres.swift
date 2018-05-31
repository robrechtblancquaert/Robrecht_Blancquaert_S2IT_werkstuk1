//
//  Adres.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit

class Adres {
    var straat: String
    var huisnummer: String
    var postcode: String
    var gemeente: String
    
    init() {
        straat = ""
        huisnummer = ""
        postcode = ""
        gemeente = ""
    }
    
    init(straat: String, huisnummer: String, postcode: String, gemeente: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
