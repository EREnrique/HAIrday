//
//  CalibratingInteractor.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CalibratingInteractor: NSObject, CalibratingInteractorInput {
    var output: CalibratingInteractorOutput?
    
    //MARK: CalibratingInteractorInput Method
    func generateScalpAnalysisResult() {
        let scalpImage: UIImage = fetchScalpImageFromFile()!
        var remarks: [String] = []
        var offerings : [String] = ["Shampoos", "Conditioner","Hair treatments","Healthy hair dyes","Hairdressers","The full package"]
        var scalpAnalysisResult = Dictionary<String, Any>(
            dictionaryLiteral: ("ScalpHealthStatus","Pass"),
            ("HealthPercentage","100%"),
            ("Remarks",remarks),
            ("Trivia",""),
            ("DiscountPercentage","20%"),
            ("ProductOffers",offerings),
            ("UserGender","Male"),
            ("UserName","Zera"),
            ("ScalpImage",scalpImage))
        
        //fetch User's Gender
        let userGenderKey = "gender"
        let userGender = UserDefaults.standard.object(forKey: userGenderKey) as! String
        scalpAnalysisResult["UserGender"] = "\(userGender)"
        
        //Generate Scalp Health Values
        let randomScalpHealthValue = arc4random_uniform(100+1)
//        let randomScalpHealthValue = 70
        if(randomScalpHealthValue > 75) {
            scalpAnalysisResult["ScalpHealthStatus"] = "Pass"
            scalpAnalysisResult["HealthPercentage"] = "\(randomScalpHealthValue)%"
            remarks.append("Healthy")
        } else {
            scalpAnalysisResult["ScalpHealthStatus"] = "Fail"
            scalpAnalysisResult["HealthPercentage"] = "\(randomScalpHealthValue)%"
            if userGender == "Male" {
                remarks.append("Male pattern baldness")
                scalpAnalysisResult["Trivia"] = "Male pattern baldness has been associated with a higher risk of coronary heart disease, although no causal link has been established"
            } else if userGender == "Female" {
                remarks.append("Slight thinning around the crown")
                remarks.append("Dandruff and dry scalp")
                scalpAnalysisResult["Trivia"] = "Hair thinning can be due to an imbalance in hormones or dietary nutrition."
            }
            
            //Generate Offerings
            offerings[3] = "Bandanas"
            offerings[4] = "Wigs and Extensions"
            
            //Update Array Values
            scalpAnalysisResult["ProductOffers"] = offerings
            scalpAnalysisResult["Remarks"] = remarks
        }
        
        //Persist User Data
        let filePath = UserModel.sharedInstance.getFileURL(fileName: "data.dat").path
        NSKeyedArchiver.archiveRootObject(scalpAnalysisResult, toFile: filePath)
        
        output?.returnGeneratedScalpAnalysis(result: scalpAnalysisResult)
    }
    
    //MARK: Helper Method
    func fetchScalpImageFromFile()-> UIImage? {
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            if let persistedImage = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("fileName.png").path) {
                return persistedImage
            }
        }
        
        return nil
    }
}
