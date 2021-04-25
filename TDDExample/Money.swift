//
//  Money.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/25.
//

import UIKit

class Money: NSObject {
    internal var amount: Int = 0
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func equals(object: AnyObject) -> Bool {
        guard let money = object as? Money else { return false }
        return amount == money.amount
    }
}
