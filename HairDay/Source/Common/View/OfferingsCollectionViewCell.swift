//
//  OfferingsCollectionViewCell.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class OfferingsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var offerImageView: UIImageView!
    @IBOutlet weak var offerDescription: UILabel!
    
    var offerItem: OffersDisplayItem? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI()
    {
        if let offerItem = offerItem {
            let imageURL = URL(string: (offerItem.productImageURL)!)
            let imageData = try!Data(contentsOf: imageURL!)
            offerImageView.image = UIImage(data: imageData, scale: UIScreen.main.scale)!
            offerDescription.text = offerItem.productLabel
        } else {
            offerImageView.image = nil
            offerDescription.text = ""
        }
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
    
}
