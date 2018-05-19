//
//  HairLogView.swift
//  HairDay DEV
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class HairLogViewScreen: BaseView {
    @IBOutlet weak var hairLogHeader: HairDayHeaderLabel!
    @IBOutlet weak var capturedScalpThumbnail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        populateView()
    }
    
    //MARK: Helper Methods
    
    func populateView() {
        let userName = UserDefaults.standard.object(forKey: "name") as! String
        let filePath = UserModel.sharedInstance.getFileURL(fileName: "data.dat").path
        let userProperties = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! Dictionary<String, Any>
        capturedScalpThumbnail.image = userProperties["ScalpImage"] as! UIImage
        hairLogHeader.text = "\(userName)'s Hair Log"
        
    }
}
