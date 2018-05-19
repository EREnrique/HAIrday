//
//  ScalpCaptureOptionsInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class ScalpCaptureOptionsInteractor: NSObject, ScalpCaptureOptionsInteractorInput {
    var output : ScalpCaptureOptionsInteractorOutput?
    let userScalpImageKey = "scalpImage"
    
    //MARK: ScalpCaptureOptionsInteractorInput Methods
    func fetchCapturedScalpImage() {
        fetchScalpImageFromFile()
    }
    
    func fetchScalpImageFromUserDefaults() {
        DispatchQueue.main.async {
            let imageData = UserDefaults.standard.object(forKey: self.userScalpImageKey) as? NSData
            
            if let imageData = imageData {
                let capturedImage = NSKeyedUnarchiver.unarchiveObject(with: imageData as Data) as? UIImage
                self.output?.returnCapturedScalpImage(scalpImage: capturedImage!)
            }
        }
    }
    
    func fetchScalpImageFromFile() {
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            if let persistedImage = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("fileName.png").path) {
                output?.returnCapturedScalpImage(scalpImage: persistedImage)
            }
        }
    }
}
