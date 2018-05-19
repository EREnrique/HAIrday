//
//  CalibratingPresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CalibratingPresenter: NSObject, CalibratingModuleProtocol, CalibratingInteractorOutput {
    var calibratingWireframe: CalibratingWireframe?
    var interactor: CalibratingInteractorInput?
    
    //MARK: CalibratingModuleProtocol Method
    func generateScalpAnalysisResult() {
        interactor?.generateScalpAnalysisResult()
    }
    
    //MARK: CalibratingInteractorOutput Method
    func returnGeneratedScalpAnalysis(result: Dictionary<String, Any>) {
        if result["ScalpHealthStatus"] as! String == "Pass" {
            calibratingWireframe?.presentCongratulationsView()
        } else {
            if result["UserGender"] as! String == "Male" {
                calibratingWireframe?.presentStartTakingChargeMaleView()
            } else if result["UserGender"] as! String == "Female" {
                calibratingWireframe?.presentStartTakingChargeFemaleView()
            }
        }
    }
}
