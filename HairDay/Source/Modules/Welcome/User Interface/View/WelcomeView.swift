//
//  WelcomeView.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class WelcomeView: BaseView {
    var eventHandler : WelcomeModuleProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Action Methods
    @IBAction func femaleGenderTapped(_ sender: Any) {
        eventHandler?.specifyUserGender(user: "Female")
    }
    
    @IBAction func MaleGenderTapped(_ sender: Any) {
        eventHandler?.specifyUserGender(user: "Male")
    }
}
