//
//  Algorithm.swift
//  GeneralAlgorithm
//
//  Created by subash on 6/3/20.
//  Copyright © 2020 symbolicTrace. All rights reserved.
//

import Foundation

class Algorithm {
    //
    //Count Number Of Highest Element in Array
    /*
    You are in charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age. When she blows out the candles, she’ll only be able to blow out the tallest ones. Your task is to find out how many candles she can successfully blow out.
    For example, if your niece is turning  years old, and the cake will have  candles of height , , , , she will be able to blow out  candles successfully, since the tallest candles are of height  and there are  such candles.
    Function Description
    Complete the function birthdayCakeCandles in the editor below. It must return an integer representing the number of candles she can blow out.
    birthdayCakeCandles has the following parameter(s):
    ar: an array of integers representing candle heights */
    static func birthdayCakeCandles() {
        func birthdayCakeCandles(ar: [Int]) -> Int {
            guard let firstElement = ar.first else {
                fatalError("Bad input")
            }
            var max = firstElement
            var maxCount = 1
            for element in ar[1..<ar.count] {
                if element > max {
                    max = element
                    maxCount = 1
                } else if element == max {
                    maxCount += 1
                }
            }
            return maxCount
        }
        
        guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }

        guard let arTemp = readLine() else { fatalError("Bad input") }
        let ar: [Int] = arTemp.split(separator: " ").map {
            if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
                return arItem
            } else { fatalError("Bad input") }
        }

        guard ar.count == arCount else { fatalError("Bad input") }
        let result = birthdayCakeCandles(ar: ar)
        print(result)
    }
    
}
