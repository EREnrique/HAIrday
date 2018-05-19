//
//  WelcomePresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class WelcomePresenter: NSObject, WelcomeModuleProtocol, WelcomeInteractorOutput {
    var interactor : WelcomeInteractorInput?
    var welcomeWireframe : WelcomeWireframe?
    
    //MARK: Helper Methods
    func proceedToScalpCapture() {
        welcomeWireframe?.presentScalpCaptureView()
    }
    
    //MARK: WelcomeModuleProtocol Methods
    func specifyUserGender(user: String) {
        interactor?.persistUser(user: user)
    }
    
    //MARK: WelcomeInteractorOutput Methods
    func userPersisted(userPersistedStatus: Bool) {
        guard userPersistedStatus == false else {
            proceedToScalpCapture()
            
            return
        }
    }
    
    
}
