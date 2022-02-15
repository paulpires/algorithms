import XCTest
@testable import algorithms

class AddBinaryTests: XCTestCase
{
    func testA()
    {
        let out = AddBinary().addBinary(
            "11", // 3
             "1"   // 1
        )
        XCTAssertEqual(out, "100") // 4
    }
    func testB()
    {
        let out = AddBinary().addBinary(
            "1010", // 10
            "1011"  // 11
        )
        XCTAssertEqual(out, "10101") // 21
    }
    func testC()
    {
        let out = AddBinary().addBinary(
            "1010", // 10
            "1001"  // 9
        )
        XCTAssertEqual(out, "10011") // 19
    }
    func testD()
    {
        let out = AddBinary().addBinary(
             "1010", // 10
            "11001" // 25
        )
        XCTAssertEqual(out, "100011") // 35
    }
    func testE()
    {
        let out = AddBinary().addBinary(
            "1111", // 15
            "1111" // 15
        )
        XCTAssertEqual(out, "11110") // 30
    }
    func testF()
    {
        let out = AddBinary().addBinary(
            "111111", // 63
              "1111" // 15
        ) //1001110
        XCTAssertEqual(out, "1001110") // 78
    }
}
