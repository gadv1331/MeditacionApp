//
//  vistaAmorAudio5min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit
import AVFoundation

class vistaAmorAudio5min: UIViewController,AVAudioPlayerDelegate {

    
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
        Este momento es una invitación a que tengas un momento de amor contigo mismo. Muchas veces nos dejamos de lado, nos olvidamos de cuidarnos y de que tenemos que ser nuestra prioridad. Vamos a comenzar tomando una postura cómoda, soltando cualquier tensión que tengamos en el cuerpo. Tomamos una respiración profunda, juntamos las manos en el corazón y vamos a conectar con todo ese amor que tenemos dentro de nosotros. Aférrate a la luz de tu amor y repite conmigo las siguientes afirmaciones:
        
        El amor nace de mí y me rodea, estoy abierto y receptivo ante el amor, soy merecedor de todo lo bueno, me libero de las limitaciones de mi mente, estoy dispuesto a crear nuevas ideas con respecto a mí mismo, merezco abundancia y amor, merezco lo mejor, merezco ser todo lo que deseo ser, me siento feliz y cómodo siendo yo, irradio paz, amor y felicidad, disfruto de mi compañía, amo cada rincón de mi ser con amor incondicional, los demás reflejan el amor que tengo por mí, cada día tengo más confianza en mí mismo, el amor que siento por mí es el amor más grande que tengo, yo soy dueño de mis decisiones con felicidad y armonía, el amor inunda todo mi ser y vuelve a mí multiplicado, amo cada parte de mí, creo paz en mi mente y en mi corazón.
        
         Amar a los demás es más fácil cuando me acepto a mí mismo, estoy en paz, estoy a salvo, fluyo libremente por la vida, sé que en cada recorrido del camino solo me espera lo mejor. Me perdono y elimino la idea de no ser suficiente, me amo y me acepto tal cual como soy, me amo y me cuido hoy y siempre. Todo está bien.
        
        MEDITACIÓN TRANSCRITA DEL CANAL DE YOUTUBE DHYNA ESPACIO HOLÍSTICO, ESCRITA POR LA TERAPEUTA HOLÍSTICA MELANIE

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
            guard let audioURL = Bundle.main.url(forResource: "AmorPropioVideo1", withExtension: "mp3") else {
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

