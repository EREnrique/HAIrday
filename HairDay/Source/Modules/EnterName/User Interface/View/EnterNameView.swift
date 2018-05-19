//
//  EnterNameView.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class EnterNameView: BaseView {
    @IBOutlet weak var nameField: UITextField!
    var eventHandler : EnterNameModuleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enableTapGesture()

    }
    
    //MARK: Action Methods
    @IBAction func proceedToLearnMoreView(_ sender: Any) {
        eventHandler?.specifyUserName(userName: nameField.text!)
    }
}
