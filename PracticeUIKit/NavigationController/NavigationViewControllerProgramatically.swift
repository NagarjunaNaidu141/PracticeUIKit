//
//  NavigationViewControllerProgramatically.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 29/03/25.
//

import UIKit

class NavigationViewControllerProgramatically: UIViewController {
    private let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        button.setTitle("Go To Nav Controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .systemRed
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
    }
    @objc func didTapButton() {
        //default root view controller
        //let rootVc = UIViewController()
        let secondVc = SecondNavigationController()
        
//        rootVc.title = "Root nc welcome"
//        rootVc.view.backgroundColor = .systemYellow
        let navController = UINavigationController(rootViewController: secondVc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }

}
class SecondNavigationController: UIViewController {
    private let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Second Navigation Controller"
        button.setTitle("push another", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title : "dismiss", style: .plain, target: self, action: #selector(dismissSelf))
    }
    @objc func didTapButton() {
        let anoVC = UIViewController()
        anoVC.view.backgroundColor = .white
        
        navigationController?.pushViewController(anoVC, animated: true)
    }
    @objc private func dismissSelf(){
        dismiss(animated: true , completion: nil)
    }
}
