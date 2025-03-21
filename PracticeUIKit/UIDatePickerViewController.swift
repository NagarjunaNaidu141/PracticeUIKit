//
//  UIDatePickerViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class UIDatePickerViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelText.text = "Selected date appears here"
    }
    

    
     @IBAction func valueChange(_ sender: UIDatePicker) {
         updateLabel()
     }
    func updateLabel() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd hh:mm:ss"
        labelText.text = dateFormatter.string(from: datePicker.date)
    }

}
