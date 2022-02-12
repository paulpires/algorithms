import XCTest
@testable import algorithms
class RemoveElementTests: XCTestCase
{
    func testA()
    {
        var nums = [3,2,2,3]
        let result = [2,2,2,3]
        XCTAssertEqual(RemoveElement().removeElement(&nums, 3), 2)
        XCTAssertEqual(nums, result)
    }
    func testB()
    {
        var nums = [0,1,2,2,3,0,4,2]
        let result = [0,1,3,0,4,0,4,2]
        XCTAssertEqual(RemoveElement().removeElement(&nums, 2), 5)
        XCTAssertEqual(nums, result)
    }
    func testC()
    {
        var nums = [1,2,3,4]
        let result = [2,3,4,4]
        XCTAssertEqual(RemoveElement().removeElement(&nums, 1), 3)
        XCTAssertEqual(nums, result)
    }
    
    // MARK: - alternative
    
    func testD()
    {
        var nums = [3,2,2,3]
        let result = [2,2,2,3]
        XCTAssertEqual(RemoveElement().removeElement2(&nums, 3), 2)
        XCTAssertEqual(nums, result)
    }
    func testE()
    {
        var nums = [0,1,2,2,3,0,4,2]
        let result = [0,1,3,0,4,0,4,2]
        XCTAssertEqual(RemoveElement().removeElement2(&nums, 2), 5)
        XCTAssertEqual(nums, result)
    }
    func testF()
    {
        var nums = [1,2,3,4]
        let result = [2,3,4,4]
        XCTAssertEqual(RemoveElement().removeElement2(&nums, 1), 3)
        XCTAssertEqual(nums, result)
    }
}
