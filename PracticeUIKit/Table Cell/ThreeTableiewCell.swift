//
//  ThreeTableiewCellTableViewCell.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 28/03/25.
//

import UIKit

class ThreeTableiewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    func configure(with models: [ModelImg]){
        self.models = models
        collectionView.reloadData()
    }
  
    static let identifier = "ThreeTableiewCell"
    static func nib() -> UINib {
        return UINib(nibName: "ThreeTableiewCell", bundle: nil)
    }
    var models = [ModelImg]()
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(ThreeCollectionViewCell.nib(), forCellWithReuseIdentifier: ThreeCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThreeCollectionViewCell.identifier, for: indexPath) as! ThreeCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
}
