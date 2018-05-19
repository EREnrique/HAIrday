//
//  WelcomeInteractorIO.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

protocol WelcomeInteractorInput {
    func persistUser(user: String)
}

protocol WelcomeInteractorOutput {
    func userPersisted(userPersistedStatus: Bool)
}
