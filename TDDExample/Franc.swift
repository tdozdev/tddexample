//
//  Franc.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/25.
//

import UIKit

class Franc: Money {
    override func times(multiplier: Int) -> Money {
        return Money.franc(amount: amount * multiplier)
    }
}
