//
//  ExampleInstructionsDocumentViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 13/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomInstructionsDocumentViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomInstructionsDocumentViewController : CustomInstructionsDocumentUIObjects {
    func getInstructionsDocumentBtnContinue() -> UIButton {
        return btnContinue
    }
    
    func getInstructionsDocumentBtnCancel() -> UIButton {
        return btnCancel
    }
}
