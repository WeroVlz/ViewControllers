//
//  ViewControllerCrearCuenta.swift
//  Practica2y3
//
//  Created by Alumno on 03/10/22.
//

import UIKit
import FirebaseAuth

class ViewControllerCrearCuenta: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func crearCuenta(_ sender: Any) {
        Auth.auth().createUser(withEmail: "edgar@gmail.com", password: "123456")
        {(AuthDataResult, Error) in
            if Error == nil
            {
                let exito = UIAlertController(title: "Exito", message: "Usuario registrado", preferredStyle: .alert)
                exito.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                
                self.present(exito, animated: true, completion: nil)
            }
            else{
               
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
