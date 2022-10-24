//
//  ViewController.swift
//  Informacion
//
//  Created by Alumno on 10/21/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var lblTextoDos: UILabel!
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblError.isHidden = true
    }
    
    //Action + Codigo
    @IBAction func doTapSiquiente(_ sender: Any) {
        lblError.isHidden = true
        if swPermisoNavegacion.isOn {
            performSegue(withIdentifier: "goToModificar", sender: self)
        } else {
            lblError.isHidden = false
        }
    }
    
    @IBAction func doTapModificar2(_ sender: Any) {
        performSegue(withIdentifier: "goToModificar2", sender: self)
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToModificar" {
            let destino = segue.destination as! ModificarController
            destino.texto = lblTexto.text
            destino.callbackActualizar = actualizarEtiqueta
        } else if segue.identifier == "goToModificar2" {
            let destino = segue.destination as! Modificar2Controller
            destino.texto = lblTextoDos.text
            //destino.callbackActualizarDos
        }
    }
    
    //Codigo Actualizar
    func actualizarEtiqueta(texto: String) {
        lblTexto.text = texto
        lblTextoDos.text = texto
    }
}
