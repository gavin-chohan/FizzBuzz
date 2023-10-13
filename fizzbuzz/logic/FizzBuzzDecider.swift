//
//  FizzBuzzDecider.swift
//  fizzbuzz
//
//  Created by Gavin Chohan on 12/10/2023.
//

import Foundation

struct FizzBuzzDecider {
    func fizzes(numbers: [Int]) -> [String] {
        fizzes1(numbers: numbers)
    }
    
    func fizzes1(numbers: [Int]) -> [String] {
        return numbers.map { number in

            // FizzBuzz
            if number % 3 == 0, number % 5 == 0 {
                return "FizzBuzz"
            }

            // Fizz
            if number % 3 == 0 {
                return "Fizz"
            }
            
            // Buzz
            if number % 5 == 0 {
                return "Buzz"
            }

            return "\(number)"
        }
    }

    func fizzes2(numbers: [Int]) -> [String] {
        return numbers.map { number in

            // Fizz
            let remainderWhenDividedByThree = number % 3

            // Buzz
            let remainderWhenDividedByFive = number % 5

            // FizzBuzz
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
    
    func fizzes3(numbers: [Int]) -> [String] {
        return numbers.map { number in
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
    }
}
