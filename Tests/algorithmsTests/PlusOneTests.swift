import XCTest
@testable import algorithms

class PlusOneTests: XCTestCase
{
    func testA()
    {
        let out = PlusOne().plusOne([1,2,3])
        XCTAssertEqual(out, [1,2,4])
    }
    func testB()
    {
        let out = PlusOne().plusOne([4,3,2,1])
        XCTAssertEqual(out, [4,3,2,2])
    }
    func testC()
    {
        let out = PlusOne().plusOne([9])
        XCTAssertEqual(out, [1,0])
    }
    func testD()
    {
        let out = PlusOne().plusOne([9,9,9])
        XCTAssertEqual(out, [1,0,0,0])
    }
    func testE()
    {
        let out = PlusOne().plusOne([9,0,9,9])
        XCTAssertEqual(out, [9,1,0,0])
    }
}
