//
//  BaseWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

class BaseWireframe: NSObject {
    func mainStoryBoard() -> UIStoryboard {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        return storyBoard
    }
}
