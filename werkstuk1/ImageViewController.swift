//
//  ImageViewController.swift
//  werkstuk1
//
//  Created by student on 02/06/2018.
//  Copyright © 2018 BLANCQUAERT Robrecht (s). All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var persoon = Persoon()
    
    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.foto.image = persoon.foto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PersoonViewController
        vc.persoon = self.persoon
    }
    

}
