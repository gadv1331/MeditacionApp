//
//  vistaAnsiedadAudio7min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class vistaAnsiedadAudio7min: UIViewController {

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
        
        Ponte cómodo, colócate en una posición que tu cuerpo se sienta tranquilo y relajado, donde cada parte de él pueda reposar y descansar sin que nadie lo interrumpa. Observa tu respiración, ¿estás dejando que fluya con naturalidad? En su máxima expresión? Que cuando inhalas, tus pulmones realmente se pueden expandir? Y cuando exhalas, ¿puedes liberarte de todo lo que ya no necesitas?
        
        La ansiedad se produce cuando nuestra mente o nosotros queremos cambiar el pasado, cuando nos preocupamos excesivamente por el futuro, por cosas que todavía no han ocurrido o cuando no dejamos llevar por el sobre pensamiento. Estando conscientes y presentes en nuestra respiración, esa ansiedad se desvanece porque empezamos a disfrutar de lo que es real, estamos presentes en este momento, este momento de paz en el que te estás ocupando simplemente de ti, de respirar.
        
        Trae tu atención a la punta de tu nariz, inhala profundamente, cuando exhales, hazlo por la boca. Y una vez más, inhala por la nariz y exhala por la boca, y observa, cierra los labios y continúa inhalando y exhalando por la nariz y cuando tu mente intente distraerte, con listas de cosas que tendríamos que hacer o con situaciones que quisiera cambiar o con recuerdos y memorias. dile a tu mente con calma, con tranquilidad, que este no es el momento de ocuparte de todo eso, este es el momento de estar presente en lo que está sucediendo ahora mismo no hay nada más real que cada inhalación y exhalación que estas tomando.
        
         Disfruta como si fuera la primera vez que inhalas, disfruta como si fuera la primera vez que exhalas. Todo a tu propio ritmo, pero intenta que sea más lento que tu vida cotidiana, tu conexión ahora entre tu ser y tu respiración es mucho más fuerte, eso es lo que te trae al presente y no deja que viajes hacia otro sitio.
        
        Respira y deja todo ir, sigue inhalando y exhalando, encuentra los detalles en tu respiración que no conocías, sientes el aire correr por tus fosas nasales, sientes como tus pulmones se expanden y contraen. Siente y disfruta de esa relajación, de esa energía, deja que tu respiración fluya.
        
        Entonces, cuando sientas esa ansiedad, tómate unos minutos para inhalar y exhalar y verás como todo cae en su lugar. Lentamente comienza a abrir tus ojos, siéntete renovado, calmado y en paz, porque todo está bien, todo está como tiene que estar, confía en tu poder interior.
        
        MEDITACIÓN TRANSCRITA DEL CANAL DE MEDITACIONES MINDFULNESS “PAU’S SECRETS”

        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
    
    }
    

}
