//
//  EnterNamePresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class EnterNamePresenter: NSObject, EnterNameModuleProtocol, EnterNameInteractorOutput {
    var interactor : EnterNameInteractorInput?
    var enterNameWireframe : EnterNameWireframe?
    
    //MARK: EnterNameModuleProtocol Methods
    func specifyUserName(userName: String) {
        interactor?.persistUserName(userName: userName)
    }
    
    //MARK: EnterNameInteractorOutput
    func userNamePersisted(wasPersisted: Bool) {
        if wasPersisted {
            enterNameWireframe?.presentLearnMoreView()
        }
    }
}
