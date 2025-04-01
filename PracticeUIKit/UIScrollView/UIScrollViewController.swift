//
//  UIScrollViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 31/03/25.
//

import UIKit

class UIScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue

        // Do any additional setup after loading the view.
    }
    let scrollView = UIScrollView()
        let contentView = UIView()
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.size.height - 20))
        scrollView.backgroundColor = .systemYellow
        view.addSubview(scrollView)

        
        contentView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 1200)
                contentView.backgroundColor = .lightGray
                scrollView.addSubview(contentView)
                
                // Add Content to ScrollView
                let label = UILabel(frame: CGRect(x: 20, y: 20, width: 300, height: 40))
                label.text = "Hello, ScrollView!"
                label.textColor = .black
                contentView.addSubview(label)
                
                // Define content size
                //scrollView.contentSize = contentView.frame.size
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 1100)
        
    }
}





