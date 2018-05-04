//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
var numerator = 0
var denumerator = 0


// PROCESS

//check numerator
while 1 == 1 {
    print("numerator")
    
    // Waiting for input
    guard let integerNumerator = readLine() else {
        continue
        // Check for nil
    }
    //test 2:
    guard let givenInput = Int(integerNumerator)else{
        continue
    }
    //test 3:
    if givenInput < 0 {
        continue
    }
    numerator = givenInput
    break
}

print(numerator)

//check denumerator
while 1 == 1 {
    print("denomator")
    
    //wait for the input
    guard let givenInteger = readLine() else{
        //check for nil
        continue
    }
    //test 2:
    guard let integerDenomator = Int(givenInteger) else{
        //check for integer
        continue
    }
    //test 3:
    if integerDenomator < 1 {
        continue
    }
    denumerator = integerDenomator
    break
}

print(denomnator)

//quotient and reminder
var quotient = numerator / denumerator
var reminder = numerator % denumerator




// OUTPUT
// Report results to the user here

