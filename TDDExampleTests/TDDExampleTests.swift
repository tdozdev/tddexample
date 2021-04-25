//
//  TDDExampleTests.swift
//  TDDExampleTests
//
//  Created by 김영근 on 2021/04/23.
//

import XCTest
@testable import TDDExample

class TDDExampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // $5 x 2 = $10, Dollar 부작용?
    func testMultiplication() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let five = Dollar(amount: 5)
        XCTAssertTrue(Dollar(amount: 10).equals(object: five.times(multiplier: 2)))
        XCTAssertTrue(Dollar(amount: 15).equals(object: five.times(multiplier: 3)))
    }
    
    // equals()
    func testEquality() throws {
        XCTAssertTrue(Dollar(amount: 5).equals(object: Dollar(amount: 5)))
        XCTAssertFalse(Dollar(amount: 5).equals(object: Dollar(amount: 6)))
        XCTAssertTrue(Franc(amount: 5).equals(object: Franc(amount: 5)))
        XCTAssertFalse(Franc(amount: 5).equals(object: Franc(amount: 6)))
        XCTAssertFalse(Franc(amount: 5).equals(object: Dollar(amount: 5)))
    }
    
    func testFancMultiplication() {
        let five = Franc(amount: 5)
        XCTAssertTrue(Franc(amount: 10).equals(object: five.times(multiplier: 2)))
        XCTAssertTrue(Franc(amount: 15).equals(object: five.times(multiplier: 3)))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
