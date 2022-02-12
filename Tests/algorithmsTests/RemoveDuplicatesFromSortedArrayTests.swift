import XCTest
@testable import algorithms

class RemoveDuplicatesFromSortedArrayTests: XCTestCase
{
    func testA()
    {
        var nums = [1,1,2]
        let expectedArr = [1,2,2]
        XCTAssertEqual(RemoveDuplicatesFromSortedArray().removeDuplicates(&nums), 2)
        XCTAssertEqual(nums, expectedArr)
    }
    func testB()
    {
        var nums = [0,0,1,1,1,2,2,3,3,4]
        let expected = [0,1,2,3,4,2_,2,3,3,4]
        XCTAssertEqual(RemoveDuplicatesFromSortedArray().removeDuplicates(&nums), 5)
        XCTAssertEqual(nums, expected)
    }
}
