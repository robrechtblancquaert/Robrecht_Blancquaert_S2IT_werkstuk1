//
//  TableViewController.swift
//  werkstuk1
//
//  Created by BLANCQUAERT Robrecht (s) on 31/05/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit
import CoreLocation

class TableViewController: UITableViewController {

    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personen.append(Persoon(naam: "Blancquaert", voornaam: "Robrecht", adres: Adres(straat: "processieweg", huisnummer: "33", postcode: "3130", gemeente: "Betekom"), coordinaten: CLLocationCoordinate2D(latitude: 50.842491, longitude: 4.324516), telefoonnummer: "0474733086", foto: #imageLiteral(resourceName: "weird")))
        personen.append(Persoon(naam: "Taelemans", voornaam: "Dylan", adres: Adres(straat: "hacker", huisnummer: "420", postcode: "0000", gemeente: "Cave"), coordinaten: CLLocationCoordinate2D(latitude: 50.844151, longitude: 4.326479), telefoonnummer: "09999999", foto: #imageLiteral(resourceName: "hackerman")))
        personen.append(Persoon(naam: "Kruf", voornaam: "Femke", adres: Adres(straat: "kaasstraat", huisnummer: "20", postcode: "6512", gemeente: "Hollandaise"), coordinaten: CLLocationCoordinate2D(latitude: 51.437089, longitude: 5.478968), telefoonnummer: "123456789", foto: #imageLiteral(resourceName: "Red")))
        personen.append(Persoon(naam: "Muys", voornaam: "Tijl", adres: Adres(straat: "Kerkstraat", huisnummer: "640", postcode: "1080", gemeente: "Gemeentedorp"), coordinaten: CLLocationCoordinate2D(latitude: 50.803172, longitude: 4.379666), telefoonnummer: "047856901", foto: #imageLiteral(resourceName: "Tijl")))
        personen.append(Persoon(naam: "Ambroos", voornaam: "Fons", adres: Adres(straat: "Langstraat", huisnummer: "800", postcode: "3180", gemeente: "Langdorp"), coordinaten: CLLocationCoordinate2D(latitude: 50.994796, longitude: 4.870444), telefoonnummer: "098746512", foto: #imageLiteral(resourceName: "Fons")))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = personen[indexPath.row].voornaam + " " + personen[indexPath.row].naam
        cell.imageView?.image = personen[indexPath.row].foto

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetails"
        {
            let vc = segue.destination as! PersoonViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.persooon = personen[(indexPath?.row)!]
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
