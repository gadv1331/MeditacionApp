//
//  vistaAnsiedad.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 1/10/23.
//

import UIKit

class vistaAnsiedad: UIViewController {

    @IBOutlet weak var contenedorTexto: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contenedorTexto.layer.cornerRadius = 25
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
