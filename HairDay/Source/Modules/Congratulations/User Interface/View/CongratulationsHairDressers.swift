//
//  CongratulationsHairDressers.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class CongratulationsHairDressers: BaseView {
    var congratulationsWireframe : CongratulationsWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func proceedToHairLog(_ sender: Any) {
        congratulationsWireframe?.presentHairLogViewFromViewController(self)
    }
}
