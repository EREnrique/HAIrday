//
//  LearnMoreView.swift
//  HairDay
//
//  Created by Enrico Boller on 16/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class LearnMoreView: BaseView, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var questionBullet1: UIImageView!
    @IBOutlet weak var question1: HairDaySubHeaderLabel!
    @IBOutlet weak var answerField1: UITextField!
    @IBOutlet weak var answerPicker1: UIPickerView!
    
    @IBOutlet weak var questionBullet2: UIImageView!
    @IBOutlet weak var question2: HairDaySubHeaderLabel!
    @IBOutlet weak var answerField2: UITextField!
    @IBOutlet weak var answerPicker2: UIPickerView!
    
    @IBOutlet weak var questionBullet3: UIImageView!
    @IBOutlet weak var question3: HairDaySubHeaderLabel!
    @IBOutlet weak var answerField3: UITextField!
    @IBOutlet weak var answerPicker3: UIPickerView!
    
    @IBOutlet weak var resultsButton: HairDayRoundedButton!
    
    var eventHandler : LearnMoreModuleProtocol?
    
    var answers1 = ["No regular meals","1-2 regular meals","All 3 regular meals"]
    var answers2 = ["Never","At least once a month","Every 1-3 months","Every 3-6 months","< Every 6 months"]
    var answers3 = ["Hair loss","Itchy or red scalp","Oily scalp","Dandruff","None of these"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enableTapGesture()
    }
    
    //MARK: UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countRows: Int = answers1.count
        if pickerView == answerPicker2 {
            countRows = answers2.count
        } else if pickerView == answerPicker3 {
            countRows = answers3.count
        }
        
        return countRows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == answerPicker1 {
            let titleRow = answers1[row]
            return titleRow
        } else if pickerView == answerPicker2 {
            let titleRow = answers2[row]
            return titleRow
        } else if pickerView == answerPicker3 {
            let titleRow = answers3[row]
            return titleRow
        }
        
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == answerPicker1 {
            self.answerField1.text = self.answers1[row]
            self.answerPicker1.isHidden = true
        } else if pickerView == answerPicker2 {
            self.answerField2.text = self.answers2[row]
            self.answerPicker2.isHidden = true
        } else if pickerView == answerPicker3 {
            self.answerField3.text = self.answers3[row]
            self.answerPicker3.isHidden = true
        }
    }
    
    //MARK: UITextFieldDelegate Methods
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == answerField1 {
            self.answerPicker1.isHidden = false
        } else if textField == answerField2 {
            self.answerPicker2.isHidden = false
        } else if textField == answerField3 {
            self.answerPicker3.isHidden = false
        }
    }
    
    //MARK: Action Methods
    @IBAction func proceedToResults(_ sender: Any) {
        eventHandler?.proceedToCalibrationScreen()
    }
    
}
