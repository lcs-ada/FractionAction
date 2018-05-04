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

print(denumerator)

//quotient and reminder
var quotient = numerator / denumerator
var reminder = numerator % denumerator

    //result = whole number
if reminder == 0 {
    print("Result is:", quotient)
}
    //if the reminder is the factor of the denomnator
else if denumerator % reminder == 0 {
    let reducedNumerator = 1
    let reducedDenumerator =  denumerator / reminder
    //if the quotient is 0, don't print
    if quotient == 0 {
        print("\(reducedNumerator)/\(reducedDenumerator)")
        //if the quotient is bigger than 0, print it.
    } else {
        print("\(quotient) \(reducedNumerator)/\(reducedDenumerator)")
    }
    // the reminder is not the factor of the denomnator
} else  {
    // we must reduce.
    //loop backwards from the halfway point of the numerator
    var GCF = 1 //not the real GCF
    for i in stride(from: reminder / 2, through: 2, by: -1){
        print(i)
        //when the vounter varibale "i" evenly divides into both
        //th reminder and the original denominator...we have the GCF
        
        if reminder % i == 0 && denumerator % i == 0 {
            //Now we know that "i" is the greatest common factor (GCF)
            GCF = i
            break
        }
    }
    
    
// OUTPUT
    let finalReminder = reminder / GCF
    let finalDenumerator = denumerator / GCF
    
    //if the quotient equals to 0, don't print
    if quotient == 0 {
        print("\(finalReminder) /\(finalDenumerator)")
        //if the quotient is not, print it
    } else {
        print("\(quotient) \(finalReminder)/\(finalDenumerator)")
        
    }
}


