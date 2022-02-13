import XCTest
@testable import algorithms

class MaximumSubArrayTests: XCTestCase
{
    func testA()
    {
        let input = [-2,1,-3,4,-1,2,1,-5,4]
        let out = MaximumSubArray().maxSubArray(input)
        XCTAssertEqual(out, 6) // [4,-1,2,1]
    }
    func testB()
    {
        let input = [1]
        let out = MaximumSubArray().maxSubArray(input)
        XCTAssertEqual(out, 1)
    }
    func testC()
    {
        let input = [5,4,-1,7,8]
        let out = MaximumSubArray().maxSubArray2(input)
        XCTAssertEqual(out, 23)
    }
    func testD()
    {
        let input = [-1]
        let out = MaximumSubArray().maxSubArray2(input)
        XCTAssertEqual(out, -1)
    }
    
    // MARK: - alternative
    func testE()
    {
        let input = [-2,1,-3,4,-1,2,1,-5,4]
        let out = MaximumSubArray().maxSubArray2(input)
        XCTAssertEqual(out, 6) // [4,-1,2,1]
    }
    func testF()
    {
        let input = [1]
        let out = MaximumSubArray().maxSubArray2(input)
        XCTAssertEqual(out, 1)
    }
    func testG()
    {
        let input = [5,4,-1,7,8]
        let out = MaximumSubArray().maxSubArray(input)
        XCTAssertEqual(out, 23)
    }
    func testH()
    {
        let input = [-1]
        let out = MaximumSubArray().maxSubArray(input)
        XCTAssertEqual(out, -1)
    }
}
