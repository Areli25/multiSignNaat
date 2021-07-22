//
//  ExampleCustomIdInstructionsViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 13/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomIdInstructionsViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomIdInstructionsViewController : CustomIdInstructionsUIObjects {
    func getIdInstructionsBtnContinue() -> UIButton {
        return btnContinue
    }
    
    func getIdInstructionsBtnCancel() -> UIButton {
        return btnCancel
    }
}
