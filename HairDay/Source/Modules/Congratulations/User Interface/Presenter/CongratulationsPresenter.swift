//
//  CongratulationsPresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CongratulationsPresenter: NSObject, CongratulationsModuleProtocol, CongratulationsInteractorOutput {
    var congratulationsWireframe : CongratulationsWireframe?
    var congratulationsView : CongratulationsViewProtocol?
    var interactor : CongratulationsInteractorInput?
    
    //MARK: CongratulationsModuleProtocol Methods
    func fetchPersistedUserProperties() {
        interactor?.fetchPersistedUserProperties()
    }
    
    //MARK: CongratulationsInteractorOutput Method
    func returnPersisted(userProperties: Dictionary<String, Any>) {
        congratulationsView?.populateView(userProperties: userProperties)
    }
}
