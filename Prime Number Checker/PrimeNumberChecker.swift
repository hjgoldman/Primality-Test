//
//  File.swift
//  Prime Number Checker
//
//  Created by Hayden Goldman on 3/15/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import Foundation

class PrimeNumberChecker {
    
//    var n :Int
    
//    init(number :Int) {
//        
//        self.number = number
//    }
    
    func primalityTest(n :Int) -> Bool {
        
        if n <= 1 {
            return false
        }
        if n <= 3 {
            return true
        }
        var i = 2
        while i*i <= n {
            if n % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }
    
    
}
