//
//  vistaAgobioAudio5min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class vistaAgobioAudio5min: UIViewController {

    @IBOutlet weak var contenedorTexto: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    
    
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
        Si seleccionaste esta opción es porque te sientes mal, atrapado en una situación que no te gusta, te sientas bloqueado, sin saber que hacer o cómo salir de esa situación. Por eso es importante esto que estás haciendo, buscando un espacio para lograr la calma y tener una mejor reacción. Por eso, observa tu respiración, cómo estás respirando.
        
        Ya consciente de tu respiración, inhala profundamente, siente todo ese aire; ahora exhala, vota todo el aire que tienes en los pulmones…
        
        Para y observa tu respiración. Tu respiración consciente, te servirá para salir del piloto automático. Cierra suavemente tus ojos y haz un par de respiraciones profundas inspirando y soltando tensiones relajando tu mente y tu cuerpo y tras estas respiraciones permanece por unos Segundos en contacto con tu respiración, con su fluir natural. Y si te distraes con pensamientos, no pasa nada y como aquí y ahora, en el presente, todo es posible y observa con curiosidad.
        
        Observa tu bucle, eso que te agobia, como si fueras un extraño. Sé tú propio observador, ábrete al bloqueo y obsérvalo curiosamente. ¿Qué pensamientos vienen? ¿Qué sensaciones se registran en tu cuerpo ante esta historia? ¿Hay algo que estás tratando de evitar? ¿Algo que te asuste o te dé miedo?
        
        Busca alternativas. Habiendo creado estas perspectivas y siendo tu propio observador sin filtros plantéate, qué necesito conseguir con todo esto? Cuál es mi verdadera necesidad? ¿Hay algo distinto que pueda hacer? Y si lo hay, es funcional y saludable para mi a corto y medio plazo? Estaré contento con mi decisión a largo plazo? Recuerda tienes la potencialidad de redirigir tú norte y elegir conscientemente; no te olvides de ti, de parar en tu respiración y de escucharte y aceptarte en tu agobio.
        
        TRANSCRIPCIÓN DE LA MEDITACIÓN GUIADA DE BELÉN COLOMINA, EXPERTA EN MINDFULNESS

        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
        

    }
}
