//
//  vistaAnsiedad.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 1/10/23.
//

import UIKit

class vistaAnsiedad: UIViewController {

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
        
        La ansiedad es una emoción que forma parte de los humanos, como toda emoción tiene una función adaptativa.
        Esta emoción tiende a ocurrir por un carácter anticipatorio a algo que puede ser amenazante o peligroso. Cuando estamos en una circunstancia real, hay algo posiblemente amenazante, nos ayuda a poder reaccionar con rapidez ante el evento. Pero cuando son cosas imaginativas, o que no nos damos cuenta que tenemos herramientas necesarias para afrontar la amenaza, esta emoción puede hacerse más fuerte. Y si no somos conscientes de esto que nos está ocurriendo, nuestra respuesta a la emoción podría ser peor..
        
        Por eso es importante que cuando sentimos ansiedad, nos demos unos minutos para conectarnos con nosotros y las circunstancias en la que estamos viviendo. Preguntarnos ¿qué estoy sintiendo? ¿Cómo y en qué parte de mi cuerpo lo estoy sintiendo? ¿Cuál es la razón por la que tengo estos sentimientos? ¿Qué siento que me amenaza? ¿Qué es lo que me puede pasar con esa amenaza? ¿Cómo puedo hacer frente a esa amenaza?
        
        Recuerda, las emociones permiten conectarnos con nosotros y nuestro exterior, llevarnos a la armonía.

        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
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
