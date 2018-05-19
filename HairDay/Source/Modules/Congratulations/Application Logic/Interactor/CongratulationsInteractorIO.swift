//
//  CongratulationsInteractorIO.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

protocol CongratulationsInteractorInput {
    func fetchPersistedUserProperties()
}

protocol CongratulationsInteractorOutput {
    func returnPersisted(userProperties: Dictionary<String, Any>)
}
