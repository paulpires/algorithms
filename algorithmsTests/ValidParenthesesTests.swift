import XCTest
@testable import algorithms

class ValidParenthesesTests: XCTestCase
{
    func testA()
    {
        XCTAssertTrue(ValidParentheses().isValid("()"))
        XCTAssertTrue(ValidParentheses().isValid("()[]{}"))
        XCTAssertTrue(ValidParentheses().isValid("(()[]{})"))
    }
    func testB()
    {
        XCTAssertFalse(ValidParentheses().isValid("(]"))
    }
}
