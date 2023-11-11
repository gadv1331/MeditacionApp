//
//  vistaAnsiedadAudio10min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit
import AVFoundation

class vistaAnsiedadAudio10min: UIViewController,AVAudioPlayerDelegate{

    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var contenedorTexto: UIView!
    
    @IBOutlet weak var btnReproducir: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    var isPlaying = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
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
        Siéntate de una manera cómoda. Puedes sentarte en una silla, sobre un cojín o tumbada en el suelo, como tu consideres que vas a estar más cómodo. Es importante que elijas un lugar en el que nadie te va a molestar los siguientes minutos. Puedes apoyar las manos sobre las rodillas o colocarlas con las palmas hacia arriba una encima de la otra.
        
         Una vez que encuentres tu posición con la espalda erguida cierra tus ojos, ve centrando tu atención en tu respiración. Vas a hacer un par de respiraciones profundas inhalando por la nariz exhalando por la boca para soltar tensiones y que puedas tomar consciencia de que estas parando.
        
        Para que te resulte más fácil conectar con el momento presente y puedas reducir tu actividad mental vas a comenzar realizando unas respiraciones muy profundas y conscientes, inhalando por la nariz en cuatro tiempos y exhalando también por la nariz en ocho tiempos.
        
        Comenzamos: inhalo 1, 2, 3, 4… exhalo 1, 2, 3, 4, 5, 6, 7, 8. Inhalo 1, 2, 3, 4… exhalo 1, 2, 3, 4, 5, 6, 7, 8. Inhalo 1, 2, 3, 4… exhalo 1, 2, 3, 4, 5, 6, 7, 8. Inhalo 1, 2, 3, 4… exhalo 1, 2, 3, 4, 5, 6, 7, 8. Inhalo 1, 2, 3, 4… exhalo 1, 2, 3, 4, 5, 6, 7, 8.
        
        A partir de este momento deja que tu respiración fluya con libertad respirando de forma espontánea y natural. Déjate llevar, ahora no tienes nada más que hacer, nada más que pensar en tu respiración. Observa como es el aire que entra y el aire que sale. Date cuenta de esas pequeñas pausas que puedes observar después de cada inhalación y de cada exhalación.
        
        Obsérvate desde que te has comenzado a mirar a ti, qué ha cambiado, como es tu respiración ahora, cómo sientes a tu cuerpo, cómo te sientes.
        
        Continúa con la compañía de tu respiración, quizás sientas que hay pensamientos que te distraen, pensamientos que vienen a tu cabeza, no le des mayor importancia.
        
         En ese momento vuelve otra vez a tu respiración, a sentirte, siéntete a ti mismo tal cual estás en este momento. dedicarte este momento es un gran regalo que te haces a ti mismo, permítetelo, permítete estar a ti mismo con lo que sientes, desde el descanso, desde la relajación, mantente unos instantes en tu silencio, contigo, con tu respiración.
        
        MEDITACIÓN TRANSCRITA DEL CANAL DE YOUTUBE SIÉNTETE BIEN DE LA EXPERTA EN EJERCICIO Y RELAJACIÓN MARÍA MARTÍNEZ.


        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
    }
    
    func setupUI() {
            btnReproducir.setTitle("Reproducir", for: .normal)
            btnReproducir.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
    }
    
    @objc func playButtonTapped() {
            if isPlaying {
                stopAudio()
            } else {
                playAudio()
            }
        }
    
    func playAudio() {
            guard let audioURL = Bundle.main.url(forResource: "AnsiedadVideo3", withExtension: "mp3") else {
                print("Error: No se encontró el archivo de audio")
                return
            }
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayer?.delegate = self
                audioPlayer?.play()
                isPlaying = true
                btnReproducir.setTitle("Detener", for: .normal)
            } catch {
                print("Error al reproducir el audio: \(error.localizedDescription)")
            }
        }
    
    func stopAudio() {
            audioPlayer?.stop()
            isPlaying = false
            btnReproducir.setTitle("Reproducir", for: .normal)
        }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        stopAudio()
    }
    
}
