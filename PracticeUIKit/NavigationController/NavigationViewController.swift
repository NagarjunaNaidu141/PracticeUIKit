//
//  NavigationViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 29/03/25.
//

import UIKit

class NavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "My Title"
    }
    
    @IBAction func tapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "second") as! SecondNavigationViewController
        navigationController?.pushViewController(vc, animated: true)
    }


}
class SecondNavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.title = "Hello second"
    }
    
    @IBAction func buttonTapped(){
        navigationController?.popViewController(animated: true)
    }

}
