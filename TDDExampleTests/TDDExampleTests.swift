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

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let five = Dollar(amount: 5)
        five.times(multiplier: 2)
        XCTAssertTrue(10 == five.amount)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
