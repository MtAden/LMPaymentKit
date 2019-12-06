//
//  SPKCardNumber.swift
//  PaymentKit Example
//
//  Created by Alok Choudhary on 12/6/19.
//  Copyright © 2019 Stripe. All rights reserved.
//

import Foundation

class SPKCardNumber {
    private var number: String
    var cardType: SPKCardType?
    var last4: String?
    var lastGroup: String?
    var string: String?
    var formattedString: String?
    var formattedStringWithTrail: String?

    class func cardNumberWithString(_ string: String) -> Self {
        return self.init(string)
    }
    
    required init(_ string: String) {
        // number = string.replacingOccurrences(of: "\\D", with: "", options: NSRegularExpressionSearch, range: NSMakeRange(0, string.length))
        //number = string.replacingOccurrences(of)
        self.number = string.replacingOccurrences(of: "\\D", with: "")
    
    }
 /*   func spkCardType() -> SPKCardType {
        if number.length < 2 {
            return PKCardTypeUnknown
        }
        var firstChars: String = number.substring(with: NSMakeRange(0, 2))
        var range: Int32 = firstChars.intValue
        if range >= 40 && range <= 49 {
            return .Visa
        } else if range >= 50 && range <= 59 {
            return .Master
        } else if range == 34 || range == 37 {
            return .Amex
        } else if range == 60 || range == 62 || range == 64 || range == 65 {
            return .Discover
        } else if range == 35 {
            return .JCB
        } else if range == 30 || range == 36 || range == 38 || range == 39 {
            return .DinersClub
        } else {
            return unknown
        
        }
    } */
    
    func last4(string: String) { }
    

}
