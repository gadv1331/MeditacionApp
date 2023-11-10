//
//  vistaAmorPropio.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 1/10/23.
//

import UIKit

class vistaAmorPropio: UIViewController {

    @IBOutlet weak var contenedorVista: UIView!
    @IBOutlet weak var contenedorTexto: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contenedorVista.layer.cornerRadius = 20
        
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
        textView.backgroundColor = UIColor(red: 103/255, green: 23/255, blue: 154/255, alpha: 0)
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 18)
        textView.text = """
        El amor propio o autoestima, es nuestra decisión de amarnos cómo somos y está va a estar afectada, por la forma en que nos percibimos; lo cual se conoce como autopercepción.
        La  autopercepción es un concepto mental de quién y cómo somos, de la imagen mental de nosotros mismos, es decir, y una idea de cómo somos tanto física como psicológicamente. Lo cual está vinculado a las experiencias que hemos tenido a lo largo de nuestra vida. Esta idea de nosotros mismos puede coincidir con la idea que los demás tienen de nosotros o no, incluso esta idea puede coincidir con la realidad o no. Cuando más realista sea el autoconcepto, más adecuada será nuestra interacción con el ambiente que nos rodea, más nos aceptamos a nosotros mismos, mayor será nuestra capacidad de crecimiento personal y más sólida será nuestra autoestima.
        Si nuestra autoestima es adecuada, podremos interactuar con el mundo de forma sana, podemos afirmarnos en cualquier situación y defender nuestros derechos sin alteración. Con una autoestima sana seremos inmunes o poco vulnerables a los ataques emocionales del entorno y actuaremos con tranquilidad en cualquier situación, aceptándonos incondicionalmente, lo que hará que estemos satisfechos de nuestras reacciones y conductas.

        Una autoestima sana previene enfermedades psicológicas como la depresión o la ansiedad. Es también una de las bases de las relaciones humanas, y por lo tanto, afecta de forma directa a nuestra manera de actuar en el mundo y de relacionarnos con los demás.
        Una autoestima saludable nos permite tener una serie de conductas y actitudes que tienen efectos beneficiosos para la salud y la calidad de vida.
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
