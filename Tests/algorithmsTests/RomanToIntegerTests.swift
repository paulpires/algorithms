//
//  RomanToIntegerTests.swift
//  algorithmsTests
//
//  Created by Paul Pires on 02/02/2022.
//

import XCTest
@testable import algorithms

class RomanToIntegerTests: XCTestCase
{
    func testA()
    {
        XCTAssertEqual(RomanToInteger().romanToInt("VIV"), 9)
        XCTAssertEqual(RomanToInteger().romanToInt("III"), 3)
        XCTAssertEqual(RomanToInteger().romanToInt("LVIII"), 58)
        XCTAssertEqual(RomanToInteger().romanToInt("MCMXCIV"), 1994)
    }
}
