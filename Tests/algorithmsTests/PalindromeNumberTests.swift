//
//  PalindromNumber.swift
//  algorithmsTests
//
//  Created by Paul Pires on 02/02/2022.
//

import XCTest
@testable import algorithms

class PalindromeNumberTests: XCTestCase
{
    func testA()
    {
        XCTAssertTrue(PalindromeNumber().isPalindrome(8))
        XCTAssertTrue(PalindromeNumber().isPalindrome(121))
        XCTAssertTrue(PalindromeNumber().isPalindrome(21112))
        
        XCTAssertFalse(PalindromeNumber().isPalindrome(-121))
        XCTAssertFalse(PalindromeNumber().isPalindrome(10))
    }
}
