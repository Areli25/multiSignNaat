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
    @IBOutlet weak var viewToast: UIView!
    @IBOutlet weak var lblToast: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewToast.isHidden = true
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
    
    func getToastIdView() -> UIView {
        return viewToast
    }
    
    func setAttempt(attempt: Int) {
        print(attempt)
        lblToast.text = "Tienes \(attempt) intentos mas para validar tu rostro"
    }
    
    func getTimeToast() -> Double {
        return 2.5
    }
}
