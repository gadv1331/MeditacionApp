//
//  ViewController.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 20/9/23.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var botonSalir: UIButton!
    
    @IBOutlet weak var botonInicio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        botonInicio.layer.cornerRadius = 15
        botonSalir.layer.cornerRadius = 15
        
        
        
    }
    
    
   
}
