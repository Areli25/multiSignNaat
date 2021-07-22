//
//  ExampleCustomScrollInstructionsViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomScrollInstructionsViewController: UIViewController {
    
    @IBOutlet weak var scrollContainerView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    
    
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

extension ExampleCustomScrollInstructionsViewController : CustomScrollInstructionsUIObjects {
    func getScrollInstructionsBntSkip() -> UIButton {
        return self.btnSkip
    }
    
    func getScrollInstructionsContainerView() -> UIView {
        return self.scrollContainerView
    }
    
    
    func getScrollInstructionsScrollView() -> UIScrollView {
        return self.scrollView
    }
    
    func getScrollInstructionsPageControl() -> UIPageControl {
        return self.pageControl
    }
    
    func getScrollInstructionsBtnCancel() -> UIButton {
        return self.btnCancel
    }
    
    func getScrollInstructionsBtnContinue() -> UIButton {
        return self.btnContinue
    }
    
    
    
    
}
