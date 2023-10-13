//
//  FizzBuzzDecider.swift
//  fizzbuzz
//
//  Created by Gavin Chohan on 12/10/2023.
//

import Foundation

struct FizzBuzzDecider {
    func fizzes(numbers: [Int]) -> [String] {
        return numbers.map { number in
            fizzes(number: number)
        }
    }

    func fizzes(number: Int) -> String {
        let isDivisibleByThree = number % 3 == 0
        let isDivisibleByFive = number % 5 == 0
        if isDivisibleByThree, isDivisibleByFive {
            return "FizzBuzz"
        }
        if isDivisibleByThree {
            return "Fizz"
        }
        if isDivisibleByFive {
            return "Buzz"
        }
        return "\(number)"
    }

    private func fizzesAttempt1(numbers: [Int]) -> [String] {
        return numbers.map { number in
            if number % 3 == 0, number % 5 == 0 {
                return "FizzBuzz"
            }
            if number % 3 == 0 {
                return "Fizz"
            }

            if number % 5 == 0 {
                return "Buzz"
            }

            return "\(number)"
        }
    }

    private func fizzesAttempt2(numbers: [Int]) -> [String] {
        return numbers.map { number in

            let remainderWhenDividedByThree = number % 3
            let remainderWhenDividedByFive = number % 5
            if remainderWhenDividedByThree == 0, remainderWhenDividedByFive == 0 {
                return "FizzBuzz"
            }
            if remainderWhenDividedByThree == 0 {
                return "Fizz"
            }
            if remainderWhenDividedByFive == 0 {
                return "Buzz"
            }
            return "\(number)"
        }
    }
}
