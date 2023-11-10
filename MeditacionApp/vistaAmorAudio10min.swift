//
//  vistaAmorAudio10min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class vistaAmorAudio10min: UIViewController {

    
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
        Ponte en una posición cómoda, la que tú elijas, inhala, exhala, inhala, exhala, inhala una vez más con fuerza, sosténlo, exhala, deja que tu cuerpo y tu mente se preparen para recibir el regalo que hoy vas a darles. Inhala, exhala, relaja tu cuello, siente todo tu cuerpo, relájate y permite que fluya la energía, pon una ligera sonrisa en tu boca, ahora sí estamos listos para repetir las frases que traerán amor propio y autoestima a tu vida, las frases que te harán recordar tu grandeza y vivirla en todo su esplendor.
        
        Confía en ti. Me amo incondicionalmente. Libero las creencias pasadas que no me hacen bien, las dejo ir. Me perdono por no creer en mí y al hacerlo, sano el sentimiento y evoluciono. Amo quien soy por dentro y por fuera, me acepto tal y como soy, reconozco que soy creación divina, confío en mí y en mi poder, yo soy todo, tengo tanto que comparto generosamente, brillo porque soy perfectible. Soy una persona digna de amar.
        
         Soy una persona merecedora del amor más puro. El amor aporta alegría a mi vida, toda su energía está dentro de mí. Cuido mi cuerpo, mi mente y mi corazón porque me amo. Estoy dispuesto a vivir con bienestar y a amarme en todo momento. A partir de ahora, reconozco mis talentos, cualidades y belleza. Solo abro las puertas de mi vida a personas que me tratan de manera amorosa y con respeto. Soy amado tal cual soy.
        
        Me permito enfocarme en lo que me gusta de mí mismo. Atraigo personas maravillosas que comparten mi luz, soy único y valioso, me conecto con el amor que hay dentro de mí, doy amor también a quienes me rodean, acepto cada aspecto de mí. Dejo de juzgarme y me permito amarme profundamente, Amarme y aceptarme es parte de mi vida y se da con naturalidad.
        
         Me perdono y me amo. Respeto lo que soy y quien soy, elijo hacer cosas que me hagan vivir en plena salud y tranquilidad, acepto los cumplidos y amor de los demás porque también lo merezco. Soy mi prioridad, atiendo mis necesidades y me doy el tiempo para satisfacerlas, el amor que me tengo aumenta día con día, no necesito que los demás me aprueben, aprendo a confiar en mí, mi cuerpo es hermoso y reacciona con el amor que le doy.
        
        Soy capaz de sanar mis heridas, tengo amor en cada centímetro de mi cuerpo, soy feliz por el simple hecho de ser parte de este mundo maravilloso. Creo en mí y sé que puedo lograr todo lo que me proponga. Yo soy responsable de mi propia felicidad y la construyo todos los dias de mi vida.
        
        Soy responsable de mi propia vida y elijo lo mejor para mí, soy merecedor de recibir amor de quienes me rodean, tengo el poder de lograr todo lo que me proponga, estoy en el mejor momento para iniciar la vida que deseo. Mi fortaleza es mi poder. Gracias al amor, llegan a mi vida personas hermosas que me aman.
        
        Confío en mí en cada circunstancia que se me presenta, me amo y apruebo mi cuerpo y mi forma de ser sin juicios. Poseo belleza por dentro y por fuera y me encanta ser yo. Decido amarme profundamente y no permitir que nada externo debilite mi confianza y amor propio. Doy gracias por la grandeza con la que fui creado, tengo paz de saber que soy amado. Respira, estás listo para salir a brillar y amarte como eres, respira, relájate profundamente, agradece tu vida, agradece quien eres.
        
        MEDITACIÓN TRANSCRITA DEL CANAL DE YOUTUBE MEDITACIONES PARA LA VIDA.

        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
        
    }
    

}
