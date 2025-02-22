//
//  SwiftPaymentViewController.swift
//  PaymentKit Example
//
//  Created by Alok Choudhary on 12/6/19.
//  Copyright © 2019 Stripe. All rights reserved.
//

import UIKit

class SwiftPaymentViewController: UIViewController, PKViewDelegate {

    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var paymentView: PKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.paymentView.delegate = self
        self.paymentView.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }
    
    func paymentView(_ paymentView: PKView!, didChange state: PKViewState) {
            switch (state) {
            case PKViewStateCardNumber:
                self.helpLabel.text = "Enter card number"
                
            case PKViewStateExpiry:
                self.helpLabel.text = "Enter expiry date"
                
            case PKViewStateCVC:
                self.helpLabel.text = "Enter security code"
            default: break
        }
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
