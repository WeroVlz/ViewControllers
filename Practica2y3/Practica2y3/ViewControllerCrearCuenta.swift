//
//  ViewControllerCrearCuenta.swift
//  Practica2y3
//
//  Created by Alumno on 03/10/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewControllerCrearCuenta: UIViewController {

    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var contra: UITextField!
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    @IBOutlet weak var carrera: UITextField!
    @IBOutlet weak var semestre: UITextField!
    
    let ref = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func crearCuenta(_ sender: Any) {
        Auth.auth().createUser(withEmail: correo.text ?? "", password: contra.text ?? "")
        {(AuthDataResult, Error) in
            if Error == nil
            {
                
                let usuario = AuthDataResult?.user
                
                self.ref.child("usuarios").child(usuario!.uid).setValue(["nombre": self.nombre.text ?? "", "apellido": self.apellido.text ?? "", "carrera": self.carrera.text ?? "", "semestre": self.semestre.text ?? ""]) { Error, DatabaseReference in
                    if Error == nil
                    {
                        let exito = UIAlertController(title: "Exito", message: "Usuario registrado", preferredStyle: .alert)
                        exito.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                        
                        self.present(exito, animated: true, completion: nil)
                    }
                }
                
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
