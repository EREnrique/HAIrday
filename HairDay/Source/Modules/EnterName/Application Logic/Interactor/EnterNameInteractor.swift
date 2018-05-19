//
//  EnterNameInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class EnterNameInteractor: NSObject, EnterNameInteractorInput {
    var output : EnterNameInteractorOutput?
    
    let userNameKey = "name"
    
    //MARK: EnterNameInteractorInput Method
    func persistUserName(userName: String) {
        guard (UserDefaults.standard.object(forKey: userNameKey) != nil) else {
            UserDefaults.standard.set(userName, forKey: userNameKey)
            UserDefaults.standard.synchronize()
            output?.userNamePersisted(wasPersisted: true)
            return
        }
        UserDefaults.standard.set(userName, forKey: userNameKey)
        output?.userNamePersisted(wasPersisted: true)
    }
}
