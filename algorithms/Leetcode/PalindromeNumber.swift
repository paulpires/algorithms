//
//  PalindromeNumber.swift
//  algorithms
//
//  Created by Paul Pires on 02/02/2022.
//

import Foundation

class PalindromeNumber
{
    func isPalindrome(_ x: Int) -> Bool
    {
        if x < 0
        {
            return false
        }
        if x < 10 && x > 0
        {
            return true
        }
        var input = x
        var result = 0
        while input > 0
        {
            result = result * 10 + input % 10
            input = input / 10
        }
        return x == result
    }
}
