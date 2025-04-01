//
//  TabBarViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 31/03/25.
//

import UIKit

class TabBarViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        button.setTitle("Tap Me", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    

   
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        button.center = view.center
       
    }
    @objc func buttonTapped() {
        let tabBarvc = UITabBarController()
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: ContactViewController())
        let vc3 = UINavigationController(rootViewController: HelpViewController())
        let vc4 = UINavigationController(rootViewController: AboutViewController())
        let vc5 = UINavigationController(rootViewController: SettingsViewController())
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Settings"
        
        vc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        vc2.tabBarItem = UITabBarItem(title: "Contact", image: UIImage(systemName: "person"), tag: 2)
        vc3.tabBarItem = UITabBarItem(title: "Help", image: UIImage(systemName: "questionmark.circle.fill"), tag: 3)
        vc4.tabBarItem = UITabBarItem(title: "About", image: UIImage(systemName: "info.circle.fill"), tag: 4)
        vc5.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape"), tag: 5)
        
        
        let appearance = UITabBarAppearance()
            // appearance.backgroundColor = .white
        appearance.backgroundColor = UIColor.black
        tabBarvc.tabBar.standardAppearance = appearance
        
        tabBarvc.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        if let tabBarItems = tabBarvc.tabBar.items {
               for (index, item) in tabBarItems.enumerated() {
                   switch index {
                   case 0:
                       item.badgeValue = "1"
                       item.badgeColor = .systemRed
                   case 1:
                       item.badgeValue = "2"
                     
                   case 2:
                       item.badgeValue = "10"
                     
                   case 3:
                       item.badgeValue = "4"
                   case 4:
                       item.badgeValue = "0"
                   default:
                       item.badgeValue = "5"
                   }
               }
           }

        tabBarvc.modalPresentationStyle = .fullScreen
        present(tabBarvc, animated: true)
         
     }

}
class HomeViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Home"
        }
}
class ContactViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Contact"
        }
}
class HelpViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Help"
        }
}
class AboutViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "About"
        }
}
class SettingsViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        title = "Settings"
        
        }
}

