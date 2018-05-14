//
//  PropertyLooper+Default.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

extension PropertyLooperProtocol {
    /// protocol default implementation. see `PropertyLooperProtocol`
    func allProperties() -> [String : Any] {
        var result : [String : Any] = [:]
        let mirroredSelf = Mirror(reflecting: self)
        for child in mirroredSelf.children {
            guard let label = child.label else {
                continue
            }
            
            if let converted = child.value as? String {
                result[label] = converted
            } else {
                result[label] = child.value
            }
        }
        return result
    }
}
