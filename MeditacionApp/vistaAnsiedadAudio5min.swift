//
//  vistaAnsiedadAudio5min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class vistaAnsiedadAudio5min: UIViewController {

    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var contenedorTexto: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Agrega una vista de desplazamiento a tu controlador de vista
        let scrollView = UIScrollView(frame: contenedorTexto.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contenedorTexto.addSubview(scrollView)

        // Agrega una vista de contenido a la vista de desplazamiento
        let contentView = UIView(frame: scrollView.bounds)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.addSubview(contentView)

        // Agrega el texto que deseas desplazar a la vista de contenido
        let textView = UITextView(frame: contentView.bounds)
        textView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        textView.textColor = .white
        textView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 18)
        textView.text = """
        
        Busca una posición en la que te sientas cómodo, ya sea sentado o acostado, la que tú quieras, pero que te haga sentir relajado. Ahora, ve cerrando tus ojos y trae tu atención a tu respiración y observa cómo el aire entra y sale suavemente; deja que fluya a su ritmo y permite que tu respiración sea como debe ser. Suelta tus pensamientos y simplemente respira.

        ¿Cómo te sientes en este instante? ¿Qué es lo que te perturba? ¿Qué es aquello que te quita la paz? Este problema que tienes no es mayor que tus fortalezas y capacidades, es solamente un obstáculo que está puliendo el diamante que eres.

        Permite que tu mente se despeje y dale paso a todas esas memorias que dibujan una sonrisa en tu rostro, que encienden tu corazón, que te muestran a tus seres queridos apoyándote sin importar el resultado, que reflejan tus triunfos y sobre todo, que te recuerdan todas las caídas que has superado y te han convertido en el valioso ser humano que eres hoy en día.

        Deja que la tranquilidad inunde tu ser, confía en que lo que está sucediendo te traerá un bien mucho mayor del que imaginas, respira hondo y cree en ti mismo para sacarle el mayor provecho a esta situación.

         No hay prisa, no hay apuro, deja fluir lo que sientes y tómate el tiempo que necesites para analizar lo que sucede desde la calma. Acepta tus sentimientos, perdona si hay algo o alguien a quien  perdonar, respeta tu tiempo y no te impacientes, solo con la perseverancia y la paciencia conquistarás tus miedos y tus problemas. Sin embargo, jamás olvides que gracias a ellos hoy eres más fuerte que ayer porque hace falta la oscuridad para que la luz brille con más intensidad.

        MEDITACIÓN PROPIA. PRIMER PÁRRAFO TOMADO DE LA MEDITACIÓN GUIADA PARA LA ANSIEDAD DEL DR. RUBÉN SOSA, EXPERTO EN MEDITACIÓN DESDE SU CANAL DE YOUTUBE MEDITA POR EL MUNDO.

        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size

    }
    
}
