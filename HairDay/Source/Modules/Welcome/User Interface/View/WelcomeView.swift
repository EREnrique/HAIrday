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
        let user = UserDisplayItem.init(gender: .Female)
        eventHandler?.specifyUser(user: user)
    }
    
    @IBAction func MaleGenderTapped(_ sender: Any) {
        let user = UserDisplayItem.init(gender: .Male)
        eventHandler?.specifyUser(user: user)
    }
}
