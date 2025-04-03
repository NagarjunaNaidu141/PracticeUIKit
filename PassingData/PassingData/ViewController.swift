//
//  ViewController.swift
//  PassingData
//
//  Created by Nagarjuna Naidu on 03/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondDataPassViewController
        controller.data = dataLabel.text
        present(controller, animated: true)
    }
}

