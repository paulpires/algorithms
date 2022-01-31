//
//  algorithmsTests.swift
//  algorithmsTests
//
//  Created by Paul Pires on 29/01/2022.
//

import XCTest
@testable import algorithms

class SortedArrayToBSTTests: XCTestCase
{
    func testA()
    {
        let input = [-10, -3, 0, 5, 9]
        let expectedOut = [0, -10, 5, nil, -3, nil, 9]
        let out = SortedArrayToBST().solution(input)
        XCTAssertEqual(out?.breadthFirstDescription(), expectedOut)
    }
}
