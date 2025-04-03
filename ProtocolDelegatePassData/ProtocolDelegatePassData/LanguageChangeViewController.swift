//
//  LanguageChangeViewController.swift
//  ProtocolDelegatePassData
//
//  Created by Nagarjuna Naidu on 03/04/25.
//

import UIKit

class LanguageChangeViewController: UIViewController {
    var delegate: LanguageChangeDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func frenchLanguage(_ sender: UIButton) {
        delegate?.languageChanged(index: 0)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func englishLanguage(_ sender: UIButton) {
        delegate?.languageChanged(index: 1)
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func teluguLanguague(_ sender: UIButton) {
        delegate?.languageChanged(index: 2)
        
        dismiss(animated: true, completion: nil)
    }
}

protocol LanguageChangeDelegate{
    func languageChanged(index: Int)
    
}
