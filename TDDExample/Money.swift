//
//  Money.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/25.
//

import UIKit

class Money: NSObject {
    internal var amount: Int = 0
    internal var currency: String = ""
    
    init(amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    func equals(object: AnyObject) -> Bool {
        guard let money = object as? Money else { return false }
        return amount == money.amount && type(of: self) == type(of: money)
    }
    
    func times(multiplier: Int) -> Money {
        fatalError("override 하세요!")
    }
    
    static func dollar(amount: Int) -> Dollar {
        return Dollar(amount: amount, currency: "USD")
    }
    
    static func franc(amount: Int) -> Franc {
        return Franc(amount: amount, currency: "CHF")
    }
}
