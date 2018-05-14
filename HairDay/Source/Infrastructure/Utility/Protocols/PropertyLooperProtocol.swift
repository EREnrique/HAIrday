//
//  PropertyLooperProtocol.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

protocol PropertyLooperProtocol {
    /**
     converts class' properties and values to a key-value dictionary
     - Returns: dictionary with property names as keys and their contents as the values
     */
    func allProperties() -> [String : Any]
}
