//
//  Dollar.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/23.
//

import UIKit

class Dollar: NSObject {
    var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func times(multiplier: Int) -> Dollar {
        return Dollar(amount: amount * multiplier)
    }
}
