import XCTest
@testable import algorithms

class ListNodeTests: XCTestCase
{
    func testEquality()
    {
        XCTAssertEqual([1,2,3].linkedList(), [1,2,3].linkedList())
        XCTAssertNotEqual([1,3,2].linkedList(), [1,2,3].linkedList())
    }
}
