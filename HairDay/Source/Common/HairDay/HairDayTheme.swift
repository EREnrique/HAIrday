//
//  HairDayTheme.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

struct HairDayTheme {
    func apply() {
        
    }
}

//MARK: Label Classes
class HairDayHeaderLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayHeaderLabelFont
        self.textColor = HairDayStyle.hairDayHeaderColor
    }
}

class HairDaySubHeaderLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDaySubHeaderLabelFont
        self.textColor = HairDayStyle.hairDaySubHeaderColor
    }
}

class HairDayQuestionsLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayQuestionsLabelFont
        self.textColor = HairDayStyle.hairDayQuestionsLabelColor
    }
}

class HairDayOffersLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayOffersLabelFont
        self.textColor = HairDayStyle.hairDayOffersLabelColor
    }
}

class HairDayHairDresserHeaderLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayHairDresserHeaderLabelFont
        self.textColor = HairDayStyle.hairDayHairDresserHeaderLabelColor
    }
}

class HairDayHairDresserDescriptionLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayHairDresserDescriptionLabelFont
        self.textColor = HairDayStyle.hairDayHairDresserDescriptionLabelColor
    }
}

class HairDayCalibrationHeaderLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayHairCalibrationHeaderFont
        self.textColor = HairDayStyle.hairDayCalibrationHeaderLabelColor
    }
}

class HairDayAnalysisHeaderLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayAnalysisHeaderLabelFont
        self.textColor = HairDayStyle.hairDayAnalysisHeaderLabelColor
    }
}

class HairDayAnalysisDescriptionLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
    }
    
    func changeFontName()
    {
        self.font = HairDayStyle.Fonts.hairDayAnalysisDescriptionLabelFont
        self.textColor = HairDayStyle.hairDayAnalysisDescriptionLabelColor
    }
}

//MARK: Button Classes
class HairDayRoundedButton : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        specifyFont()
        specifyBounds()
    }
    
    func specifyFont() {
        self.titleLabel?.font = HairDayStyle.Fonts.hairDayButtonLabelFont
        self.titleLabel?.textColor = HairDayStyle.hairDayButtonLabelColor
        self.layer.backgroundColor = HairDayStyle.hairDayButtonBackgroundColor.cgColor
    }
    
    func specifyBounds() {
        self.layer.cornerRadius = self.frame.height / 2.0
        self.layer.borderWidth = 0.0
    }
}

class HairDayAnswersButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeFontName()
        specifyBounds()
    }
    
    func changeFontName()
    {
        self.titleLabel?.font = HairDayStyle.Fonts.hairDayAnswersLabelFont
        self.titleLabel?.numberOfLines = 2
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.textColor = HairDayStyle.hairDayAnswersLabelColor
    }
    
    func specifyBounds() {
        self.layer.backgroundColor = HairDayStyle.hairDayAnswersLabelBackgroundColor.cgColor
        self.layer.cornerRadius = self.frame.height / 2.0
        self.layer.borderWidth = 0.0
    }
}
