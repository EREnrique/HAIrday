//
//  ScalpCapturePresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class ScalpCapturePresenter: NSObject, ScalpCaptureModuleProtocol, ScalpCaptureInteractorOutput {
    var interactor : ScalpCaptureInteractorInput?
    var scalpCaptureWireframe : ScalpCaptureWireframe?
    
    //MARK: ScalpCaptureModuleProtocol Methods
    func specifyUserScalp(scalpImage: UIImage) {
        interactor?.persistUserScalpImage(userScalpImage: scalpImage)
    }
    
    //MARK: ScalpCaptureInteractorOutput Methods
    func userScalpImagePersisted(userPersistedStatus: Bool) {
        guard userPersistedStatus == false else {
            scalpCaptureWireframe?.presentScalpCaptureOptionsView()
            return
        }
    }
}
