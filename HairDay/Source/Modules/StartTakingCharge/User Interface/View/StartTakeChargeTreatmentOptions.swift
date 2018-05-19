//
//  StartTakeChargeTreatmentOptions.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class StartTakeChargeTreatmentOptions: BaseView {
    var startTakeChargeWireframe : StartTakingChargeWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Action Methods
    @IBAction func displayShampoo(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeShampooViewFromViewController(self)
    }
    
    @IBAction func displayConditioner(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeConditionerViewFromViewController(self)
    }
    
    @IBAction func displayHairTreatment(_ sender: Any) {
        let userGender = UserDefaults.standard.object(forKey: "gender") as! String
        
        if userGender == "Female" {
            startTakeChargeWireframe?.presentStartTakingChargeHairTreatmentViewFromViewController(self)
        } else {
            startTakeChargeWireframe?.presentStartTakingChargeHairTreatmentMaleViewFromViewController(self)
        }
    }
    
    @IBAction func displayHairDyes(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeWigsViewFromViewController(self)
    }
    
    @IBAction func displayWigs(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeWigsViewFromViewController(self)
    }
    
    
}
