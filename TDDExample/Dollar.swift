//
//  Dollar.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/23.
//

import UIKit

class Dollar: Money {
    
    override func times(multiplier: Int) -> Money {
        return Money.dollar(amount: amount * multiplier)
    }
}
