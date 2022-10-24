//
//  Modificar2Controller.swift
//  Informacion
//
//  Created by Alumno on 10/24/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class Modificar2Controller: UIViewController {
    
    //Variables
    var texto : String?
    var callbackActualizar : ((String) -> Void)?
    
    //Outlet
    @IBOutlet weak var txtTexto: UITextField!
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        if texto != nil {
            txtTexto.text = texto
        }
    }
    
    //Action
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil {
            callbackActualizar!(txtTexto.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
