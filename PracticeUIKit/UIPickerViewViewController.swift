//
//  UIPickerViewViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class UIPickerViewViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
//    let brand = ["tata","toyato","honda","maruti"]
//    let cars = ["tata":["nexon","punch","Harrier","alto"],"toyato":["fortuner","innova","crusier","corolla"],"honda":["civic","crv","accent","crz"],"maruti":["swift","suzuki","alto","santro"]]
    let brands = ["Toyota", "Ford", "Honda"]
    let models = [
        "Toyota": ["Camry", "Corolla", "Prius"],
        "Ford": ["Focus", "Fiesta", "Mustang"],
        "Honda": ["Civic", "Accord", "Fit"]
    ]
    @IBOutlet weak var labelText: UILabel!
    var selectedBrand = "Toyota"
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        labelText.text = "selected brand and car is :"
        // Do any additional setup after loading the view.
    }
   
            public func numberOfComponents(in pickerView: UIPickerView) -> Int {
                return 2
            }
            
            public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                if component == 0{
                    return brands.count
                }else{
                    return models[selectedBrand]?.count ?? 0
                }
            }
        
            public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                if component == 0{
                    return brands[row]
                }else{
                    return models[selectedBrand]?[row]
                }
            }
            public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
                
                if component == 0{
                    selectedBrand = brands[row]
                    pickerView.reloadComponent(1)
                    
                }
                let selectedModelIndex = pickerView.selectedRow(inComponent: 1)
                let selectedModel = models[selectedBrand]?[selectedModelIndex] ?? "No Model Selected"
                        print("Selected Brand: \(selectedBrand), Model: \(selectedModel)")
                labelText.text = "Selected Brand: \(selectedBrand), Model: \(selectedModel)"
                    }
        
        }
        
    


