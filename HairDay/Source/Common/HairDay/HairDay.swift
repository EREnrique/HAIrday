//
//  HairDay.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

struct HairDayStyle {
    fileprivate struct Colors {
        static var hairDayOrange = UIColor(red:1.00, green:0.63, blue:0.22, alpha:1.0)
        static var hairDayBlack = UIColor.black
        static var hairDayWhite = UIColor.white
    }
    
    struct Fonts {
        static var hairDayHeaderLabelFont = UIFont(name: "GillSans-Light", size: 30)
        static var hairDaySubHeaderLabelFont = UIFont(name: "GillSans-Light", size: 25)
        static var hairDayQuestionsLabelFont = UIFont(name: "GillSans-Light", size: 25)
        static var hairDayAnswersLabelFont = UIFont(name: "GillSans-Light", size: 15)
        static var hairDayOffersLabelFont = UIFont(name: "GillSans-Light", size: 25)
        static var hairDayHairDresserHeaderLabelFont = UIFont(name: "GillSans-Bold", size: 20)
        static var hairDayHairDresserDescriptionLabelFont = UIFont(name: "GillSans-Light", size: 20)
        static var hairDayHairCalibrationHeaderFont = UIFont(name: "GillSans-Light", size: 50)
        static var hairDayAnalysisHeaderLabelFont = UIFont(name: "GillSans-Regular", size: 17)
        static var hairDayAnalysisDescriptionLabelFont = UIFont(name: "GillSans-Light", size: 17)
        static var hairDayButtonLabelFont = UIFont(name: "GillSans-Light", size: 20)
    }
    
    static var hairDayHeaderColor = HairDayStyle.Colors.hairDayBlack
    static var hairDaySubHeaderColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayQuestionsLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayAnswersLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayAnswersLabelBackgroundColor = HairDayStyle.Colors.hairDayOrange
    static var hairDayOffersLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayHairDresserHeaderLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayHairDresserDescriptionLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayCalibrationHeaderLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayAnalysisHeaderLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayAnalysisDescriptionLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayButtonLabelColor = HairDayStyle.Colors.hairDayBlack
    static var hairDayButtonBackgroundColor = HairDayStyle.Colors.hairDayOrange
    static var hairDayBoundsColor = HairDayStyle.Colors.hairDayOrange
}
