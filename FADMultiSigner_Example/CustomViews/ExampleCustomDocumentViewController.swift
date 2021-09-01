//
//  ExampleCustomDocumentViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomDocumentViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var btnAccept: UIButton!
    @IBOutlet weak var pdfView: UIView!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var lblPages: UILabel!
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    
    @IBOutlet weak var imgAgree: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension ExampleCustomDocumentViewController : CustomDocumentUIObjects {
    func getDocumentImgAgree() -> UIImageView {
        return imgAgree
    }
    
    func getDocumentLeftBtn() -> UIButton {
        return leftBtn
    }
    
    func getDocumentRightBtn() -> UIButton {
        return rightBtn
    }
    
    func getDocumentLblPages() -> UILabel {
        return lblPages
    }
    
    func getDocumentAcceptBtn() -> UIButton {
        return self.btnAccept
    }
    
    func getDocumentCancelBtn() -> UIButton {
        return self.btnCancel
    }
    
    func getDocumentContinueBtn() -> UIButton {
        return self.btnContinue
    }
    
    func getDocumentPDFView() -> UIView {
        return self.pdfView
    }
    
    func getDocumentContinueView() -> UIView {
        return self.messageView
    }
    
    
}
