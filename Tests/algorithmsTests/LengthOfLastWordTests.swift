import XCTest
@testable import algorithms

class LengthOfLastWordTests: XCTestCase
{
    func testA()
    {
        let out = LengthOfLastWord().lengthOfLastWord("Hello World")
        XCTAssertEqual(out, 5)
    }
    func testB()
    {
        let out = LengthOfLastWord().lengthOfLastWord(
            "   fly me   to   the moon  "
        )
        XCTAssertEqual(out, 4)
    }
    func testC()
    {
        let out = LengthOfLastWord().lengthOfLastWord(
            "luffy is still joyboy"
        )
        XCTAssertEqual(out, 6)
    }
    func testD()
    {
        let out = LengthOfLastWord().lengthOfLastWord(
            "a"
        )
        XCTAssertEqual(out, 1)
    }
    func testE()
    {
        let out = LengthOfLastWord().lengthOfLastWord(
            "   "
        )
        XCTAssertEqual(out, 0)
    }
}
