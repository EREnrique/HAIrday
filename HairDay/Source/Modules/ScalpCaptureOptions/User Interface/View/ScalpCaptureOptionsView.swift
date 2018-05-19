//
//  ScalpCaptureOptionsView.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class ScalpCaptureOptionsView: BaseView, ScalpCaptureOptionsViewProtocol {
    var eventHandler : ScalpCaptureOptionsModuleProtocol?
    @IBOutlet weak var userScalpScreenshot: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        eventHandler?.fetchCapturedScalpImage()
    }
    
    //MARK: ScalpCaptureOptionsViewProtocol Methods
    func displayFetchedScalpImage(scalpImage: UIImage) {
        userScalpScreenshot.image = scalpImage
    }
    
    //MARK: Action Methods
    @IBAction func startCreatingHairLog(_ sender: Any) {
        eventHandler?.redirectToUserNameView()
    }
    
    @IBAction func takeAnotherPicture(_ sender: Any) {
        eventHandler?.redirectToScalpCaptureView()
    }
}
