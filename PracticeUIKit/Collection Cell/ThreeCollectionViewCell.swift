//
//  ThreeCollectionViewCell.swift
//  PracticeUIKit
//
//  Created by Nagarjuna Naidu on 28/03/25.
//

import UIKit

class ThreeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var labelText : UILabel!
    @IBOutlet weak var imageView : UIImageView!
    
    static var identifier = "ThreeCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: ThreeCollectionViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: ModelImg){
        self.labelText.text = model.text
        self.imageView.image = UIImage(named: model.imageName)
        self.imageView.contentMode = .scaleAspectFill
        
    }

}
