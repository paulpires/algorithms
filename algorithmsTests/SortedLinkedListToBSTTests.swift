//
//  algorithmsTests.swift
//  algorithmsTests
//
//  Created by Paul Pires on 29/01/2022.
//

import XCTest
@testable import algorithms

class SortedLinkedListToBSTTests: XCTestCase
{
    func testA()
    {
        let input = ListNode(-10, .init(-3, .init(0, .init(5, .init(9, nil)))))
        let expectedOut = [0, -3, 9, -10, nil, 5]
        let out = SortedLinkedListToBST().solution1(input)
        XCTAssertEqual(out!.breadthFirstDescription(), expectedOut)
    }
}
