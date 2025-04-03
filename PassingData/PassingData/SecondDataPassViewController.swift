//
//  SecondDataPassViewController.swift
//  PassingData
//
//  Created by Nagarjuna Naidu on 03/04/25.
//

import UIKit

class SecondDataPassViewController: UIViewController {

    @IBOutlet weak var textFielddata: UITextField!
    var data : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if  data != nil {
            textFielddata.text = data
            
        }

        // Do any additional setup after loading the view.
    }


}
