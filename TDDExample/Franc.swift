//
//  Franc.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/25.
//

import UIKit

class Franc: NSObject {
    private var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func times(multiplier: Int) -> Franc {
        return Franc(amount: amount * multiplier)
    }
    
    func equals(object: AnyObject) -> Bool {
        guard let franc = object as? Franc else { return false }
        return amount == franc.amount
    }
}
