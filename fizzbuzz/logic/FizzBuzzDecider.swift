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
            
            // Fizz
            let remainderWhenDividedByThree = number % 3
            
            // Buzz
            let remainderWhenDividedByFive = number % 5
            
            // FizzBuzz
            if number % 3 == 0 && number % 5 == 0 {
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
