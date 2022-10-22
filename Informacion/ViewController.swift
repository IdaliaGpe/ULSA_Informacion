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
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblError.isHidden = true
    }
    //FinishCod
    
    //Action + Codigo
    @IBAction func doTapSiquiente(_ sender: Any) {
        lblError.isHidden = true
        if swPermisoNavegacion.isOn {
            performSegue(withIdentifier: "goToModificar", sender: self)
        } else {
            lblError.isHidden = false
        }
        //Finish If
    }
    //FinishAc+Cod
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackActualizar = actualizarEtiqueta
    }
    
    func actualizarEtiqueta(texto: String) {
        lblTexto.text = texto
    }
}
