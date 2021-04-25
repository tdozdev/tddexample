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
        return amount == money.amount && currency == money.currency
    }
    
    func times(multiplier: Int) -> Money {
        return Money(amount: amount * multiplier, currency: currency)
    }
    
    func description() -> String {
        return "\(amount) \(currency)"
    }
    
    static func dollar(amount: Int) -> Money {
        return Money(amount: amount, currency: "USD")
    }
    
    static func franc(amount: Int) -> Money {
        return Money(amount: amount, currency: "CHF")
    }
    
}
