//
//  viewAgobioAudio10min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class viewAgobioAudio10min: UIViewController {

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
        Cierra tus ojos, toma dos respiraciones bien profundas. Inspira, aguanta y exhala… saca bien todo el aire. Nuevamente inspira, llena tus pulmones, aguanta y expulsa… Ahora respira normalmente, con cada respiración que tomas, siente más y más tranquilidad; más y más calma. Permite que tu respiración siga un ritmo fluido, tu mente está más tranquila, tu cuerpo esté más cómodo.
        
        Ahora imagina una luz suave bajando del cielo, una luz agradable que tiene el color que más te gusta. Esta luz puede ser cálida o fría, lo que te hace sentir mejor. La luz está pasando por todo tu cuerpo y te ayudará a relajarte.
        
        Permite que esta luz toque la parte superior de tu cabeza y la nuca e imagina que masajea tu cuero cabelludo. Siente tu piel y tus músculos relajándose al recibir el masaje capilar, permite que tu mente se relaje, porque tú lo necesitas y lo mereces. Ahora todo está bien, y con cada respiración que tomas siente más y más calma.
        
         La luz ahora toca alrededor de tus orejas, tus ojos, tus sienes, el entrecejo, tus mejillas y tu nariz, imagina todos los músculos y fibras alrededor de tu rostro tornándose flexibles y suaves dándote una sensación profunda de tranquilidad y con cada respiración que tomas siente más y más calma.
        
        Ahora la luz baja por tu cuello, toca tus hombros y se expande por tu pecho y tu espalda. Mueve tus hombros suavemente hacia arriba y deja que caigan a su gusto, permite que los músculos se relajen y se pongan cómodos, libera las tensiones y quédate en un estado de calma y tranquilidad mientras respiras tranquilamente. Estira suavemente tu columna mientras tomas una respiración profunda, expande tu pecho, permite que toda la tensión abandone tu cuerpo, liberando tus preocupaciones y dolores.
        
        Tu luz ha viajado por todo tu cuerpo, con su estela, te ha inspirado paz y serenidad y tú la conservas mientras respiras, suavemente, con calma y sin presiones. Tu luz siempre se va a quedar contigo, acógela con tu respiración tranquila y deja que se extienda por el resto de tu cuerpo. Ya la tormenta ha pasado, abre tus ojos con confianza y sigue adelante.
        
        Recuerda que tu luz siempre va a acompañarte siempre, no se va a apartar de ti porque es parte de lo que eres, de lo que te hace único, de lo que inspira tu equilibrio. Ya nada te persigue ni te atormenta, tienes el control de tu respiración, puedes con cualquier obstáculo que la vida te presente, puedes con esta situación que en este momento te está afectando, puedes con esto y más, porque eres luz, porque llevas luz en tu interior y porque eres capaz de transmitir luz.
        
        Confía en ti, confía en el tiempo, confía en el proceso, está bien decaer, está bien sentir que a veces no puedes con todo, recuerda que tu luz no se va a apagar por eso, al contrario, se encenderá más fuerte que nunca.
        
        TRANSCRIPCIÓN DE LA MEDITACIÓN GUIADA DE SILVIA SUMMERS, DOCTORA DEL NICKLAUS CHILDREN 'S HOSPITAL. ALGUNAS IDEAS SON PROPIAS.


        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
        
    }
}
