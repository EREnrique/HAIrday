//
//  ScalpCaptureOptionsIO.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

protocol ScalpCaptureOptionsInteractorInput {
    func fetchCapturedScalpImage()
}

protocol ScalpCaptureOptionsInteractorOutput {
    func returnCapturedScalpImage(scalpImage: UIImage)
}
