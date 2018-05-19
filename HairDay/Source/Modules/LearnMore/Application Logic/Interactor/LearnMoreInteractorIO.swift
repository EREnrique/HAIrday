//
//  LearnMoreInteractorIO.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

protocol LearnMoreInteractorInput {
    func persistUserAnswers(userAnswers: Dictionary<String,Int>)
}

protocol LearnMoreInteractorOutput {
    func userAnswersPersisted(wasPersisted: Bool)
}
