//
//  LearnMoreInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class LearnMoreInteractor: NSObject, LearnMoreInteractorInput {
    var output: LearnMoreModuleProtocol?
    
    //MARK: LearnMoreInteractorInput Method
    func persistUserAnswers(userAnswers: Dictionary<String, Int>) {
        output?.proceedToCalibrationScreen()
    }
}
