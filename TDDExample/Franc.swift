//
//  Franc.swift
//  TDDExample
//
//  Created by 김영근 on 2021/04/25.
//

import UIKit

class Franc: Money {
    
    func times(multiplier: Int) -> Franc {
        return Franc(amount: amount * multiplier)
    }
}
