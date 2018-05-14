//
//  WelcomeInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class WelcomeInteractor: NSObject, WelcomeInteractorInput {
    var output : WelcomeInteractorOutput?
    
    let userKey = "user"
    let userGenderKey = "gender"
    func persistUser(user: UserDisplayItem) {
        guard (UserDefaults.standard.object(forKey: userGenderKey) != nil) else {
            UserDefaults.standard.set(user.gender.rawValue, forKey: userGenderKey)
            UserDefaults.standard.synchronize()
            output?.userPersisted(userPersistedStatus: true)
            return
        }
        
        UserDefaults.standard.set(user.gender.rawValue, forKey: userGenderKey)
        output?.userPersisted(userPersistedStatus: true)
    }
    
    //MARK: Helper Methods
    private func loadUser() -> UserDisplayItem? {
        var userData: UserDisplayItem?
        if let user = UserDefaults.standard.data(forKey: userKey) {
            userData = NSKeyedUnarchiver.unarchiveObject(with: user) as? UserDisplayItem
            return userData
        }
        
        return nil
    }
}
