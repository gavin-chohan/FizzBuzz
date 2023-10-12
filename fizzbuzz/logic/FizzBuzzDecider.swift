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
            print("\(remainderWhenDividedByThree)")
            
            // Buzz
            let remainderWhenDividedByFive = number % 5
            print("\(remainderWhenDividedByFive)")
            
            // FizzBuzz
            let remainderWhenDividedByThreeAndFive = number % 3; number % 5
            print ("\(remainderWhenDividedByThreeAndFive)")
            
            if remainderWhenDividedByThree == 0 {
                return "Fizz"
            }
            
            if remainderWhenDividedByFive == 0 {
                return "Buzz"
            }
            
            if remainderWhenDividedByThreeAndFive == 0 {
                return "FizzBuzz"
            }
                
            return "\(number)"
        }
    }
}
