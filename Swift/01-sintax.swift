#!/usr/bin/swift

// This is a comment
/*
This is a multiline comment
Hooo Yehaaa
*/

/*
Data Types
*/

let answer: Int = 42
let boolean: Bool = true
let integer: Int = 42
let pi: Double = 3.14
let float: Float = 3.14159
let string: String = "Strings in Swift can be written with double quotes."

print("Your datatype {answer} : " , answer)

/*
Collections
*/

let arrayOfStrings = [String]()
let arrayOfInts : [Int] = [1,2,3]
let dictionaryOfStringDoublePairs = ["Pi":3.1416, "Euler":2.71828]

let setOfBools : Set<Bool> = [true, false]
let setOfInts = Set<Int>()

/* 
Optional
*/

// We create an optional property by adding a ? to a Swift type.
var optionalInt : Int? = 42
var optionalString : String? = "Is this a string"
var optionalArrayOfInts: [Int]? = [1, 2, 3]
var optionalArrayOfOptionalInts: [Int?]? = [1, 2, 3]

// We must unwrap an optional before we can use it. We can do this in a couple of ways.
// Optional binding - the safest way.

if let optionalInt = optionalInt { // Swift convention is to reuse the property name.
    print(optionalInt)
}

// Implicit unwrapping - if we are sure a value will exist at runtime we can declare an
// implicitly unwrapped optional property.

var definitelyExists: String! = "The Universe"

/* 
Conditionals
*/
let cake : String = "delicious"

if cake == "delicious" {
    print("Yes please!")
} else if cake == "okay" {
    print("I'll have a small piece.")
} else {
    print("No, thank you.")
}

/*
Loops
*/

// for item in arrayOfInts {
//     print(item)
// }

// while total < maxValue {
//     total += values[i]
//     i += 2
// }

/*
Functions
*/

func powerOf(_ number: Int, toThe exponent: Int) -> Int {
    var result = 1
    for i in 0..<exponent {
        result *= number
    }
    return result
}

let eightToTheThird = powerOf(8, toThe: 3)

/*
Classes
*/

class Person {
    var name : String
    var age : Int
    init( name : String, age : Int ){
        self.name = name
        self.age = age
    }
    func birthday(){
        age += 1
    }
}
