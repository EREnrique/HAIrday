//
//  EnterNameInteractorIO.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

protocol EnterNameInteractorInput {
    func persistUserName(userName: String)
}

protocol EnterNameInteractorOutput {
    func userNamePersisted(wasPersisted: Bool)
}
