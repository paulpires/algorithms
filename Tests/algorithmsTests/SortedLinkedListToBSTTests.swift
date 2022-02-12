import XCTest
@testable import algorithms

/**
 E.g.:
 Input:
 ------------------------------------------------------------
   [-10 -> -3 -> 0 -> 5 -> 9 -> 20 -> 21 -> 22 -> 23 -> 24]
 ------------------------------------------------------------
 Output:
                            20
                             |
                |-------------------------|
                0                        23
          |-----------|            |-----------|
         -3           9            22          24
        |---x       |---x        |----x      |----x
      -10  nil      5  nil      21   nil    nil  nil
 
 Therefore, breadth first search output:
 |
 |-> [20, 0, 23, -3, 9, 22, 24, -10, nil, 5, nil, 21]
*/

class SortedLinkedListToBSTTests: XCTestCase
{
    
    // MARK: - Solution 1
    func testSolution1()
    {
        let input = ListNode(-10, .init(-3, .init(0, .init(5, .init(9, nil)))))
        let expectedOut = [0, -3, 9, -10, nil, 5]
        let out = SortedLinkedListToBST().solution1(input)
        XCTAssertEqual(out!.breadthFirstDescription(), expectedOut)
    }
    
    // MARK: - Solution 2
    func testSolution2_A()
    {
        let input = ListNode(-10, .init(-3, .init(0, .init(5, .init(9, nil)))))
        let expectedOut = [0, -3, 9, -10, nil, 5]
        let out = SortedLinkedListToBST().solution2(input)
        XCTAssertEqual(out!.breadthFirstDescription(), expectedOut)
    }

    func testSolution2_B()
    {
        let input = ListNode(-10, ListNode(-3, ListNode(0, ListNode(5, ListNode(9, ListNode(20, ListNode(21, ListNode(22, ListNode(23, ListNode(24, nil))))))))))
        let out = SortedLinkedListToBST().solution2(input)
        let expectedOut = [20, 0, 23, -3, 9, 22, 24, -10, nil, 5, nil, 21]
        XCTAssertEqual(out!.breadthFirstDescription(), expectedOut)
    }
}
