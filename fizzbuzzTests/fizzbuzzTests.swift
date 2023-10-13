//
//  fizzbuzzTests.swift
//  fizzbuzzTests
//
//  Created by Gavin Chohan on 12/10/2023.
//

@testable import fizzbuzz
import XCTest

/**
 Fizz Buzz rules
 Provide a number
 if divisible by 3, return Fizz
 if divisible by 5, return Buzz
 if divisible by 3 and 5, return FizzBuzz
 if divisble by neither, return the provided number
 */

final class fizzbuzzTests: XCTestCase {
    func testFirstFifteenValues() throws {
        let fizzBuzzDecider = FizzBuzzDecider()
        let inputs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        let expectedOutputs = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]

        for (index, number) in inputs.enumerated() {
            let actualOutput = fizzBuzzDecider.fizzes(number: number)
            let expectedOutput = expectedOutputs[index]
            XCTAssertEqual(expectedOutput, actualOutput, "Incorrect value")
        }
    }

    func testFirstFifteenValuesOfAnArray() throws {
        let fizzBuzzDecider = FizzBuzzDecider()
        let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        let expectedOutput = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
        let actualOutput = fizzBuzzDecider.fizzes(numbers: input)
        XCTAssertEqual(expectedOutput, actualOutput, "Incorrect values")
    }
}
