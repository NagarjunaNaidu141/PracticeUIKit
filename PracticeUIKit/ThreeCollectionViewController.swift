//
//  ThreeCollectionViewController.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 28/03/25.
//

import UIKit
import Foundation

class ThreeCollectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var models = [ModelImg]()

    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(ModelImg(text: "first", imageName: "photo1"))
        models.append(ModelImg(text: "two", imageName: "photo2"))
        models.append(ModelImg(text: "three", imageName: "photo3"))
        models.append(ModelImg(text: "four", imageName: "photo4"))
        models.append(ModelImg(text: "first", imageName: "photo1"))
        models.append(ModelImg(text: "two", imageName: "photo2"))
        models.append(ModelImg(text: "four", imageName: "photo4"))
        models.append(ModelImg(text: "three", imageName: "photo3"))
        
        tableView.register(ThreeTableiewCell.nib(), forCellReuseIdentifier: ThreeTableiewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self

       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ThreeTableiewCell.identifier, for: indexPath) as! ThreeTableiewCell
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }
    
}
struct ModelImg {
    var text: String
    var imageName: String
    
    init(text : String, imageName: String){
        self.text = text
        self.imageName = imageName
    }
}



