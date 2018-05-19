//
//  StartTakingChargeMale.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class StartTakingChargeMale: BaseView {
    @IBOutlet weak var capturedScalpImage: UIImageView!
    @IBOutlet var healthRemarksLabel: [HairDayAnalysisDescriptionLabel]!
    @IBOutlet weak var triviaLabel: HairDayAnalysisDescriptionLabel!
    
    var startTakeChargeWireframe : StartTakingChargeWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchUserProperties()
    }
    
    //MARK: Helper Methods
    func fetchUserProperties() {
        let filePath = UserModel.sharedInstance.getFileURL(fileName: "data.dat").path
        let userProperties = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! Dictionary<String, Any>
        populateCapturedScalpImage(scalpImage: userProperties["ScalpImage"] as! UIImage)
        populateHealthRemarks(healthRemark: userProperties["Remarks"] as! [String])
        populateTriviaLabel(trivia: userProperties["Trivia"] as! String)
    }
    
    func populateHealthRemarks(healthRemark: [String]) {
        for remarkIndex in 0..<healthRemark.count {
            healthRemarksLabel[remarkIndex].text = healthRemark[remarkIndex]
        }
    }
    
    func populateCapturedScalpImage(scalpImage: UIImage) {
        capturedScalpImage.image = scalpImage
    }
    
    func populateTriviaLabel(trivia: String) {
        triviaLabel.text = trivia
    }
    
    //MARK: Action Methods
    @IBAction func proceedToSpecialist(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeSpecialistViewFromViewController(self)
    }
    @IBAction func proceedToTreatmentOptions(_ sender: Any) {
        startTakeChargeWireframe?.presentStartTakingChargeTreatmentOptionsViewFromViewController(self)
    }

}
