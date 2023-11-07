//
//  vistaSentimiento.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 30/9/23.
//

import UIKit

class vistaSentimiento: UIViewController {

    @IBOutlet weak var contenedorTexto: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Agrega una vista de desplazamiento a tu controlador de vista
        let scrollView = UIScrollView(frame: contenedorTexto.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.layer.cornerRadius = 25
        contenedorTexto.layer.cornerRadius = 25
        contenedorTexto.addSubview(scrollView)

        // Agrega una vista de contenido a la vista de desplazamiento
        let contentView = UIView(frame: scrollView.bounds)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.layer.cornerRadius = 25
        scrollView.addSubview(contentView)

        // Agrega el texto que deseas desplazar a la vista de contenido
        let textView = UITextView(frame: contentView.bounds)
        textView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        textView.textColor = .white
        textView.backgroundColor = UIColor(red: 103/255, green: 23/255, blue: 154/255, alpha: 0)
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 18)
        textView.text = """
        
        Las emociones son reacciones que todos experimentamos: alegría, tristeza, miedo, ira, agobio, ansiedad, entre otras. Como toda reacción, tiene unas activaciones fisiológicas: sudar, ponernos colorados, que nos tiemblen las manos…todas son reacciones normales y en absoluto perjudiciales para la salud. Estas activaciones tienen el objetivo de cuidarnos.

        Las activaciones fisiológicas más intensas son las que se producen ante situaciones de alarma, ya sean amenazas físicas o amenazas sociales. Sin embargo, hay veces que nuestro cuerpo reacciona, no sabemos muy bien por qué y nos asustamos precisamente por esta reacción. La falta de información y un nivel de activación elevado pueden hacer que algunas personas presten demasiada atención a estos cambios fisiológicos y sufran trastornos de pánico. Por esta razón es importante escuchar nuestro cuerpo, reflexionar sobre nuestros pensamientos y creencias; para poder sacarle provecho a las emociones.

        Por tanto, las emociones nos permiten vincularnos con el exterior y nuestro interior: Si ellas son manejadas con equilibrio nos ayudaran a funcionar mejor. Es por esto que la meditación ha resultado ser tan beneficiosa para la salud del individuo; ya que permite observarnos y conectarnos con nosotros.
        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
    }
}
