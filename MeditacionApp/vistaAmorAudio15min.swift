//
//  vistaAmorAudio15min.swift
//  MeditacionApp
//
//  Created by Gabriel Delgado on 9/11/23.
//

import UIKit

class vistaAmorAudio15min: UIViewController {

    
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
        
        Busca un lugar que te inspire y te llene de calma, donde te sientas seguro y puedas concentrarte. Acuéstate con la espalda y el cuerpo recto, de forma que sientas la energía fluir libremente por todo tu cuerpo. Silencia tu mente y libera toda tensión, déjate ir y permítete relajar cada uno de los músculos de tu cuerpo, estás a salvo, pon tus manos juntas sobre tu pecho y cierra tus ojos. Respira profundamente y con calma, concéntrate en  cada inhalación , inhala despacio, sostén el aire y exhala soltando todos tus pensamientos, miedos y preocupaciones. Deja que se vayan. Sigue inhalando y libéralos con cada exhalación.
        
        Imagina que inhalas una cálida luz del color del sol, ella ingresa con tu respiración y llena cada parte de tu cuerpo, siente su calor, llena tus piernas, tu torso, tu espalda, tus brazos y tus manos. Ahora llega a tu corazón y lo ilumina por completo, sientes como se disuelve todo el miedo, toda la tensión y el dolor en esta luz sanadora; todas las cargas van desapareciendo. Ahora ilumina tu garganta y tu rostro. Llega a tu cabeza e ilumina tu mente, sientes la energía vibrar en todo tu ser. Esta amorosa luz te cubre por completo. Llena cada espacio, órgano y célula, soltanto ataduras y llenándote de paz.
        
        Agradece, imagina que estás en un hermoso valle, rodeado de flores de muchos colores, siente el calor del sol y las caricias del viento sobre tu piel. Empiezas a caminar en la dirección que indica tu corazón, a medida que avanzas, ves a la distancia un hermoso ser de luz que se acerca a ti. Te diriges hacia él y cuando se aproxima puedes darte cuenta de quién es. Reconoces ese rostro, esa mirada, es hermoso, es tu propio rostro, tu mirada, eres tú mismo. Lo contemplas, te sonríe y te extiende sus manos para tomar las tuyas y las pone sobre su corazón, sientes tus propios latidos. Concéntrate en ellos.
        
        Eres un ser brillante y maravilloso que ilumina todo, has olvidado tu propia magnificencia. Es hora de perdonar y sanar. Ves tu propia sonrisa brillar como el sol y tu rostro lleno de calma y amor, mirándote a los ojos repite después de mí y siente en tu corazón con total convicción cada palabra: me perdono, me perdono por haber olvidado quién soy, por haber olvidado la luz en mi interior, por esconderme y no dejarme florecer y brillar por cada palabra de desprecio que he pronunciado contra mí, por dejarme engañar y haber creído que no soy suficiente, por olvidar mi luz y mi poder, por juzgarme y criticarme, por no comprenderme y no ser paciente conmigo.
        
         Me perdono por despreciar mi cuerpo, por compararlo y quejarme de él, por limitarme, reprocharme y humillarme a mí mismo tantas veces. Perdono cada palabra, pensamiento de auto rechazado que he tenido o pronunciado. Mirándote a los ojos di tu nombre: perdóname, perdóname por las veces que te defraude, por olvidar tus sueño y anhelos, por negar el amor y la vida que mereces, por ponerte en último lugar, por pensar que no eras hermoso e importante, por callar tu voz en mi interior. Perdoname por las cosas falsas que he creído de ti, por negar tu valor y quitarte tu valor, por maltratarte, por permitir que otros te maltrataran, por hacerte a un lado y no amarte.
        
        Sigue mirándote a los ojos y sintiendo tu propio calor y tu amor, háblate a ti mismo, desde el fondo de tu alma con tus propias palabras. Pídete perdón por lo que tienes ahí escondido, anuncia tu nombre, tómate el tiempo que necesites, deja que tu corazón exprese todo lo que tiene guardado, yo estaré esperándote aquí para continuar esta meditación.
        
        Tu propio ser te mira con ojos llenos de amor y te sonríe, te extiende sus brazos y te abraza, abrázalo, abrázate, siéntete a ti mismo, rodéate y conecta contigo. Lo escuchas decir con tu propia voz: te perdono, haz hecho lo mejor que has podido, no sabías hacerlo de otra forma, estás aprendiendo y sanando y yo siempre estaré aquí esperándote con todo mi amor; siempre brillo en tu interior, siempre estoy aqui, te perdono.
        
         Haz consciencia de tu corazón y repite después de mí: estoy dispuesto a sanar, a sanar mi propio amor y mis heridas, a reconciliarme y  a reconectarme conmigo, a olvidar las mentiras que creí, a volver a mi corazón, a reencontrarme conmigo y amarme. Me abro a la guía y a la sabiduría interior y confío en que el amor me sana. Soy un ser maravilloso y bueno.
        
        Mirate detalladamente, tus ojitos, tu rostro, tu sonrisa brillante, tus manos llenas de tanto para dar, tus brazos llenos de amor y dispuestos a abrazar, tu torso, tu cuerpo maravilloso, tus piernas que te permiten andar la vida, tus ojos que te dejan ver el mundo, tus oídos que te permiten escuchar a quienes amas, tus labios que te permiten dar amor.
        
         Todo en ti es perfecto, tal como es, diseñado solo para ti, para tu misión y tu propósito, para vivir tu viaje. Reconoce todos tus talentos, tus dones y regalos, las cosas maravillosas que tienes, son solo tuyas, no hay nadie como tú, eres la combinación perfecta para cumplir tu propósito, para dejar huella en el alma de los demás.
        
        Repite con toda tu convicción: Me amo, me perdono y me libero, soy hermoso, me amo para siempre y estoy a salvo. Sal al mundo y expande tu luz, recuerda que tú eres amor, brilla intensamente.
        
        MEDITACIÓN TRANSCRITA DEL CANAL DE YOUTUBE CONEXIÓN AMOR, ESCRITA POR LA ESPECIALISTA MÍA LOVE.



        """
        contentView.addSubview(textView)

        // Configura la vista de desplazamiento para que se ajuste al tamaño de la vista de contenido
        scrollView.contentSize = contentView.bounds.size
        
    }
    

}
