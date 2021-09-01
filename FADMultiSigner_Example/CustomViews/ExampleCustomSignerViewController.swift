//
//  ExampleCustomSignerViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 06/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomSignerViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAuthenticationType: UILabel!
    @IBOutlet weak var btnCheckName: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnOutValidateCode: UIButton!
    @IBOutlet weak var imgAgreeOut: UIImageView!
    @IBOutlet weak var txtCode: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnCheckName.setImage(UIImage(named: "check_blanco"), for: .normal)
        btnCheckName.setImage(UIImage(named: "check_completo"), for: .selected)
        btnOutValidateCode.backgroundColor = .gray
    }
}

extension ExampleCustomSignerViewController : CustomSignerUIObjects {
    func getImgAgreeCode() -> UIImageView {
        return imgAgreeOut
    }
    
    func getSignerTxtCode() -> UITextField {
        return txtCode
    }
    
    func getSignerBtnCheckName() -> UIButton {
        return btnCheckName
    }
    
    func getSignerBtnOutValidateCode() -> UIButton {
        return btnOutValidateCode
    }
    
    func getSignerBtnCancel() -> UIButton {
        return btnCancel
    }
    
    func getSignerLblAuthenticationType() -> UILabel {
        return lblAuthenticationType
    }
    
    func getSignerLblName() -> UILabel {
        return lblName
    }

}
