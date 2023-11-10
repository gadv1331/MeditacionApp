//
//  vistaAgobio.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 1/10/23.
//

import UIKit

class vistaAgobio: UIViewController {

 
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
        La angustia es la emoción más universalmente experimentada por el ser humano, tiene un efecto de inmovilización y conduce al sobrecogimiento en innumerables ocasiones; se define como una emoción compleja, difusa y desagradable que conlleva serias repercusiones psíquicas y orgánicas en el sujeto; la angustia es visceral, obstructiva y aparece cuando un individuo se siente amenazado por algo (Ayuso, 1988). Es un sentimiento vinculado a situaciones de desesperación, donde la característica principal es la pérdida de la capacidad de actuar voluntaria y libremente por parte del sujeto, es decir, la capacidad de dirigir sus actos. Por tanto, ésta es un estado de intranquilidad o inquietud muy intensas causado especialmente por algo desagradable o por la amenaza de una desgracia o un peligro.
        
        La angustia se transforma en problema cuando ésta se ha apoderado del individuo de tal forma que es el propio individuo el que se convierte en la misma, es decir, el ser humano es angustia en sí. Por tanto, ese miedo, la desesperación y/o la incertidumbre, que pueden ser ocasionada por distintas situaciones de la vida cotidiana, nos paralizan y nos dominan. Es por esto que cuando nos sintamos angustiado es bueno darnos una pausa y busquemos ser consciente de lo que sentimos, y confirmar nuestra  capacidad de lograr dominar la angustia sin que ella nos domine; para lo cual es buscar controlar nuestra respiración, la tensión de nuestros músculos y los pensamientos repetitivos (aceptar que están ahí, pero que somo más que eso); puede ayudar a calmarnos para así hacer frente al evento que está generando la angustia y poder responder de forma eficiente.
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
