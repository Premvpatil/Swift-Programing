/*:
## Exercise - Optionals

 >Throughout the exercises in this playground, you will be printing optional values. The Swift compiler will display a warning: "Expression implicitly coerced from `Int?` to Any." For the purposes of these exercises, you can ignore this warning.

 Imagine you have an app that asks the user to enter his/her age using the keyboard. When your app allows a user to input text, what is captured for you is given as a `String`. However, you want to store this information as an `Int`. Is it possible for the user to make a mistake and for the input to not match the type you want to store?

 Declare a constant `userInputAge` of type `String` and assign it "34e" to simulate a typo while typing age. Then declare a constant `userAge` of type `Int` and set its value using the `Int` initializer that takes an instance of `String` as input. Pass in `userInputAge` as the argument for the initializer. What error do you get?
 */
let userInputAge: String = "34e"
let userAge: Int? = Int(userInputAge)

if let userAge = Int(userInputAge) {
    print("User age is \(userAge)")
} else {
    print("Invalid input. Please enter a valid number.")
}


//:  Go back and change the type of `userAge` to `Int?`, and print the value of `userAge`. Why is `userAge`'s value `nil`? Provide your answer in a comment or print statement below.
print(userAge)

/*:
 Now go back and fix the typo on the value of `userInputAge`. Is there anything about the value printed that seems off?

 Print `userAge` again, but this time unwrap `userAge` using the force unwrap operator.
 */
print(userAge)
//print(userAge!)
//Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).

let userInputAge1: String = "34"
let userAge1: Int? = Int(userInputAge1)
print(userAge1!)

//:  Now use optional binding to unwrap `userAge`. If `userAge` has a value, print it to the console.
let userInputAge2: String = "34"
let userAge2: Int? = Int(userInputAge2)

if let age = userAge2 {
    print(age)
}


/*:
page 1 of 6  |  [Next: App Exercise - Finding a Heart Rate](@next)
 */
