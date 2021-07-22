//
//  ExampleCustomPrivacyViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 07/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomPrivacyViewController: UIViewController {
    @IBOutlet weak var btnCancel: UIButton!
    
    @IBOutlet weak var imgCheck: UIImageView!
    @IBOutlet weak var btnAgree: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var privacyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomPrivacyViewController : CustomPrivacyUIObjects {

    
    func getPrivacyBtnContinue() -> UIButton {
        return btnContinue
    }
    
    func getPrivacyBtnCancel() -> UIButton {
        return btnCancel
    }
    
    func getPrivacyBtnAgree() -> UIButton {
        return btnAgree
    }
    
    func getPrivacyLabel() -> UILabel {
        return privacyLabel
    }
}
