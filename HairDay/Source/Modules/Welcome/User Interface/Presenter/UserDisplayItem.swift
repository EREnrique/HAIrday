//
//  UserDisplayItem.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation

enum userGender: String {
    case Male="Male", Female="Female"
}

struct UserDisplayItem : BaseDisplayItem {
    /// variable for gender
    let gender : userGender
}
