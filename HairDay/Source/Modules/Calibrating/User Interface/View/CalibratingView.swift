//
//  CalibratingView.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CalibratingView: BaseView {
    @IBOutlet weak var calibrationImageView: UIImageView!
    var eventHandler : CalibratingModuleProtocol?
    var calibratingImages : [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calibratingImages = createImageArray(total: 9, imagePrefix: "Calibrating")
        animate(imageView: calibrationImageView, images: calibratingImages)
    }
    
    //MARK: Helper Methods
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        var imageArray : [UIImage] = []
        
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)0\(imageCount+1)"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        
        return imageArray
    }
    
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 5
        imageView.startAnimatingWithCompletionBlock {
            self.eventHandler?.generateScalpAnalysisResult()
        }
    }

}
