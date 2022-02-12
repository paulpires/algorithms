import XCTest
@testable import algorithms

class MergeTwoSortedListsTests: XCTestCase
{
    // MARK: - Recursive algo
    func testA()
    {
        let list1 = [1,2,4].linkedList()
        let list2 = [1,3,4].linkedList()
        let expected = [1,1,2,3,4,4].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists(list1, list2), expected)
    }
    func testB()
    {
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists(nil, nil), nil)
    }
    func testC()
    {
        let list2 = [0].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists(nil, list2), list2)
    }
    func testD()
    {
        let list1 = [5].linkedList()
        let list2 = [1,2,4].linkedList()
        let expected = [1,2,4,5].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists(list1, list2), expected)
    }
    func testF()
    {
        let list1 = [1,2,4,5].linkedList()
        let list2 = [4,5,6].linkedList()
        let expected = [1,2,4,4,5,5,6].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists(list1, list2), expected)
    }
    
    // MARK: - Iterative
    /**
     E.g.: [1,2,4] and [1,3,4]
     _x_ denotes the referenced node by the ListNode object in question.
     iteration 1:
        node: _1_,3,4
        l1: _1_,2,4
        l2: _3_,4
     iteration 2:
        node: 1,_1_,2,4
        l1: _2_,4
        l2: _3_,4
     iteration 3:
         node: 1,1,_2_,4
         l1: _4_
         l2: _3_,4
     iteration 4:
         node: 1,1,2,_3_,4
         l1: _4_
         l2: _4_
     iteration 5:
        node: 1,1,2,3,_4_
        l1: _4_
        l2: nil
     -> breaks while loop
        node: 1,1,2,3,_4_,4
        head: _0_,1,1,2,3,4,4
     -> Result: _1_,1,2,3,4,4
     */
    func testG()
    {
        let list1 = [1,2,4].linkedList()
        let list2 = [1,3,4].linkedList()
        let expected = [1,1,2,3,4,4].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists2(list1, list2), expected)
    }
    func testH()
    {
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists2(nil, nil), nil)
    }
    func testI()
    {
        let list2 = [0].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists2(nil, list2), list2)
    }
    func testJ()
    {
        let list1 = [5].linkedList()
        let list2 = [1,2,4].linkedList()
        let expected = [1,2,4,5].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists2(list1, list2), expected)
    }
    func testK()
    {
        let list1 = [1,2,4,5].linkedList()
        let list2 = [4,5,6].linkedList()
        let expected = [1,2,4,4,5,5,6].linkedList()
        XCTAssertEqual(MergeTwoSortedLists().mergeTwoLists2(list1, list2), expected)
    }
    
}
