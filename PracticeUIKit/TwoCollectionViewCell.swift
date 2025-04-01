//
//  TwoCollectionViewCell.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 28/03/25.
//

import UIKit

class TwoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var carImage: UIImageView!
    static let identifier = "TwoCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "TwoCollectionViewCell", bundle: nil)
        
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
 func configure(with image: UIImage) {
        carImage.image = image
    }
}
