//
//  CongratulationsInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CongratulationsInteractor: NSObject, CongratulationsInteractorInput {
    var output : CongratulationsInteractorOutput?
    
    //MARK: CongratulationsInteractorInput Method
    func fetchPersistedUserProperties() {
        let filePath = UserModel.sharedInstance.getFileURL(fileName: "data.dat").path
        let userProperties = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! Dictionary<String, Any>
        output?.returnPersisted(userProperties: userProperties)
    }
}
