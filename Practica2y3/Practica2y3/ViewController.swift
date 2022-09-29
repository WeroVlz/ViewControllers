//
//  ViewController.swift
//  Practica2y3
//
//  Created by Alumno on 28/09/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "aPrincipal", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let principal = segue.destination as? ViewControllerPrincipal
        principal?.iniciaPara = "buena practica"
        
    }
}

