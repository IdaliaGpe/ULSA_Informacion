//
//  ModificarController.swift
//  Informacion
//
//  Created by Alumno on 10/21/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ModificarController: UIViewController {
    
    //Outlet
    @IBOutlet weak var txtTexto: UITextField!
    
    //Variables
    var texto : String?
    var callbackActualizar : ((String) -> Void)?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        if texto != nil {
            txtTexto.text = texto!
        }
    }
    
    //Codigo + Action
    @IBAction func doToModificar(_ sender: Any) {
        if callbackActualizar != nil {
            callbackActualizar!(txtTexto.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
