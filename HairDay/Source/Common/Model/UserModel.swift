//
//  UserModel.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

class UserModel {
    static let sharedInstance = UserModel()
    private init() {}
    
    func getFileURL(fileName: String) -> URL {
        let manager = FileManager.default
        do {
            let dirURL = try manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            return dirURL.appendingPathComponent(fileName)
        } catch {
            print(error)
        }
        return URL(fileURLWithPath: "")
    }
}
