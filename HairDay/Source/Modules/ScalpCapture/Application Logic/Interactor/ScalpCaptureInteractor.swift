//
//  ScalpCaptureInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class ScalpCaptureInteractor: NSObject, ScalpCaptureInteractorInput {
    var output : ScalpCaptureInteractorOutput?
    
    //MARK: ScalpCaptureInteractorInput Methods
    func persistUserScalpImage(userScalpImage: UIImage) {
        let imagePersisted = saveImageToFile(userScalpImage: userScalpImage)
        output?.userScalpImagePersisted(userPersistedStatus: imagePersisted)
    }
    
    func saveImageToUserDefaults(userScalpImage: UIImage) {
        let userScalpImageKey = "scalpImage"
        guard (UserDefaults.standard.object(forKey: userScalpImageKey) != nil) else {
            let imageData = NSKeyedArchiver.archivedData(withRootObject: userScalpImage)
            UserDefaults.standard.set(imageData, forKey: userScalpImageKey)
            UserDefaults.standard.synchronize()
            output?.userScalpImagePersisted(userPersistedStatus: true)
            return
        }
        let imageData = NSKeyedArchiver.archivedData(withRootObject: userScalpImage)
        UserDefaults.standard.set(imageData, forKey: userScalpImageKey)
        output?.userScalpImagePersisted(userPersistedStatus: true)
    }
    
    func saveImageToFile(userScalpImage: UIImage) -> Bool {
        guard let data = UIImageJPEGRepresentation(userScalpImage, 1) ?? UIImagePNGRepresentation(userScalpImage) else {
            return false
        }
        guard let directory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) as NSURL else {
            return false
        }
        do {
            try data.write(to: directory.appendingPathComponent("fileName.png")!)
            return true
        } catch {
            print(error.localizedDescription)
            return false
        }
    }
}
