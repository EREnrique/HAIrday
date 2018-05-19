//
//  ScalpCaptureIO.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

protocol ScalpCaptureInteractorInput {
    func persistUserScalpImage(userScalpImage: UIImage)
}

protocol ScalpCaptureInteractorOutput {
    func userScalpImagePersisted(userPersistedStatus: Bool)
}
