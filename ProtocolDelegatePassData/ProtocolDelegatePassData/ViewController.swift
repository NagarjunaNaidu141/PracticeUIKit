//
//  ViewController.swift
//  ProtocolDelegatePassData
//
//  Created by Nagarjuna Naidu on 03/04/25.
//

import UIKit

class ViewController: UIViewController, LanguageChangeDelegate {

    @IBOutlet weak var textViewData: UITextView!
    @IBOutlet weak var textHeading: UILabel!
    
    var headingText = ["Titre du texte","Text Heading","టెక్స్ట్ శీర్షిక"]
    var textViewDataArray = ["Ceci est un texte affiché utilisé pour vérifier le passage des données entre différents écrans à l'aide du protocole-délégué.","This is text view text used to check data passing between different screens using protocol- delegate","ఇది ప్రోటోకాల్-డెలిగేట్ ఉపయోగించి వివిధ స్క్రీన్‌ల మధ్య డేటా పంపPassingను తనిఖీ చేయడానికి ఉపయోగించే టెక్స్ట్ వీక్షణ టెక్స్ట్."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func settingsButton(_ sender: UIButton) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! LanguageChangeViewController
        controller.delegate = self
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
    func languageChanged(index: Int){
        textViewData.text = textViewDataArray[index]
        textHeading.text = headingText[index]
    }
}

