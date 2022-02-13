import XCTest
@testable import algorithms

class SearchInsertPositionTests: XCTestCase
{
    func testA()
    {
        let out = SearchInsertPosition().searchInsert([1,3,5,6], 5)
        XCTAssertEqual(out, 2)
    }
    func testB()
    {
        let out = SearchInsertPosition().searchInsert([1,3,5,6], 2)
        XCTAssertEqual(out, 1)
    }
    func testC()
    {
        let out = SearchInsertPosition().searchInsert([1,3,5,6], 7)
        XCTAssertEqual(out, 4)
    }
    func testD()
    {
        let out = SearchInsertPosition().searchInsert([1,3,5,6,7,8,9,10], 9)
        XCTAssertEqual(out, 6)
    }
    func testE()
    {
        let out = SearchInsertPosition().searchInsert([1,3], 4)
        XCTAssertEqual(out, 2)
    }
}
