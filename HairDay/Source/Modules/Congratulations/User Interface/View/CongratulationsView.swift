//
//  CongratulationsView.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CongratulationsView: BaseView, CongratulationsViewProtocol {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet var offerings: [HairDayAnswersButton]!
    
    var eventHandler : CongratulationsModuleProtocol?
    var congratulationsWireframe : CongratulationsWireframe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchPersistedUserInfo()
    }
    
    //MARK: Helper Methods
    func fetchPersistedUserInfo() {
        eventHandler?.fetchPersistedUserProperties()
    }
    
    //MARK: CongratulationsViewProtocol
    func populateView(userProperties: Dictionary<String, Any>) {
        let productOffers = userProperties["ProductOffers"] as! [String]
        
        for offerCount in 0..<offerings.count + 1 {
            offerings[offerCount].setTitle(productOffers[offerCount], for: .normal)
        }
    }
    
    //MARK: Action Methods
    
    @IBAction func displayOffers(_ sender: HairDayAnswersButton) {
        if sender.titleLabel?.text == "Shampoos" {
            congratulationsWireframe?.presentShampooViewFromViewController(self)
        } else if sender.titleLabel?.text == "Conditioner" {
            congratulationsWireframe?.presentConditionerViewFromViewController(self)
        } else if sender.titleLabel?.text == "Hair treatments" {
            congratulationsWireframe?.presentHairTreatmentViewFromViewController(self)
        } else if sender.titleLabel?.text == "Healthy hair dyes" {
            congratulationsWireframe?.presentHairDyesViewFromViewController(self)
        } else if sender.titleLabel?.text == "Hairdressers" {
            congratulationsWireframe?.presentHairDressersViewFromViewController(self)
        } else if sender.titleLabel?.text == "The full package" {
            congratulationsWireframe?.presentShampooViewFromViewController(self)
        }
    }
}
