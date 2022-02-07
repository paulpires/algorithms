import XCTest
@testable import algorithms

class LongestCommonPrefixTests: XCTestCase
{
    let sut = LongestCommonPrefix()
    
    func testA()
    {
        let input = ["flower","flow","flight"]
        XCTAssertEqual(sut.longestCommonPrefix(input), "fl")
    }
    func testB()
    {
        let input  = ["dog","racecar","car"]
        XCTAssertEqual(sut.longestCommonPrefix(input), "")
    }
    func testC()
    {
        let input = ["flower","flowing","flown"]
        XCTAssertEqual(sut.longestCommonPrefix(input), "flow")
    }
}
