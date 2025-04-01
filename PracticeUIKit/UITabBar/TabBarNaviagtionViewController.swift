//
//  TabBarNaviagtionViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 31/03/25.
//

import UIKit



class TabBarNaviagtionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tapButton() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
