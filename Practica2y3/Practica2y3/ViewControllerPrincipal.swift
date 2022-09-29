//
//  ViewControllerPrincipal.swift
//  Practica2y3
//
//  Created by Alumno on 28/09/22.
//

import UIKit

class ViewControllerPrincipal: UIViewController {

    @IBOutlet weak var parametro: UILabel!
    
    var iniciaPara = "Hola parametro"
    override func viewDidLoad() {
        super.viewDidLoad()

        parametro.text = iniciaPara
        
    }
    

    

}
