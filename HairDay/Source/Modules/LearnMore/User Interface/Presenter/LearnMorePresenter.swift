//
//  LearnMorePresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class LearnMorePresenter: NSObject, LearnMoreModuleProtocol, LearnMoreInteractorOutput {
    var learnMoreWireframe: LearnMoreWireframe?
    var interactor: LearnMoreInteractorInput?
    
    //MARK: LearnMoreModuleProtocol
    func persistUserAnswers(userAnswers: Dictionary<String, Int>) {
        
    }
    
    func proceedToCalibrationScreen() {
        learnMoreWireframe?.presentCalibratingView()
    }
    
    //MARK: LearnMoreInteractorOutput Methods
    func userAnswersPersisted(wasPersisted: Bool) {
        
    }
    

}
