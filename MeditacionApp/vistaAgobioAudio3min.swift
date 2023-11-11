//
//  vistaAgobioAudio3min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 8/11/23.
//

import UIKit
import AVFoundation


class vistaAgobioAudio3min: UIViewController, AVAudioPlayerDelegate {

    
    @IBOutlet weak var contenedorTexto: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    
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
        Cierra tus ojos. Tómate un momento para ti, para despejarte del mundo, para que recuperes la paz. Respira hondo, siente cómo el aire fluye a través de todo tu cuerpo, cómo comienzan a relajarse tus músculos y cómo la tensión se va liberando poco a poco.
        
         Respira nuevamente y exhala con calma, siente cómo las emociones y los pensamientos negativos desaparecen y dejan de atormentarte. Ahora que ya has despejado tu mente, recuerda que la adversidad no es un enemigo, al contrario, es un amigo que te ayudará a crecer, que te regalará fortaleza y te pulirá como el diamante que eres. El problema no es más grande que tú.
        
        En tus manos posees las herramientas para forjar el camino, solo debes respirar con tranquilidad para volver a encontrar el equilibrio interno. Eres un ser de luz, una persona capaz de superar obstáculos, ten paciencia, respeta tu tiempo, concéntrate en tu respiración, inhala y siente el aire entrando a tu cuerpo, llenándose de oxígeno, exhala y siente la capacidad de tu cuerpo de sacar el aire que no necesitas.
        
         Vas poco a poco dándote cuenta del control que tienes de tu vida, puedes aceptar las cosas que no están en tu control y controlar lo que deseas lograr. Cómo es la calma para tomar las mejores decisiones. Con esta respiración calmada y el cuerpo suelto, disponte a seguir en tu rutina saludable.


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
            guard let audioURL = Bundle.main.url(forResource: "AgobioVideo1", withExtension: "mp3") else {
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


