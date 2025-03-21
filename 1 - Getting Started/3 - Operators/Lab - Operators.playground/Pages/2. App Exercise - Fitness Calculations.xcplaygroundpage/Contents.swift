/*:
## App Exercise - Fitness Calculations
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracker keeps track of users' heart rate, but you might also want to display their average heart rate over the last hour. Create three constants, `heartRate1`, `heartRate2`, and `heartRate3`. Give each constant a different value between 60 and 100. Create a constant `addedHR` equal to the sum of all three heart rates. Now create a constant called `averageHR` that equals `addedHR` divided by 3 to get the average. Print the result.
 */

let rate1 : Int = 72
let rate2 : Int = 85
let rate3 : Int = 98
let add : Int = rate1 + rate2 + rate3
let avg : Double = Double(add)/3

print("Addition Result : \(add)")
print("Average Result : \(avg)")
//:  Now create three more constants, `heartRate1D`, `heartRate2D`, and `heartRate3D`, equal to the same values as `heartRate1`, `heartRate2`, and `heartRate3`. These new constants should be of type `Double`. Create a constant `addedHRD` equal to the sum of all three heart rates. Create a constant called `averageHRD` that equals the `addedHRD` divided by 3 to get the average of your new heart rate constants. Print the result. Does this differ from your previous average? Why or why not?
let h1 : Int = 67
let h2 : Int = 56
let h3 : Int = 98

let hh1 : Double = 78
let hh2 : Double = 85
let hh3 : Double = 67

let addedHRD : Int = h1 + h2 + h3
let addedHRD2 : Double = hh1 + hh2 + hh3
let averageHRD = (addedHRD)/3
let averageHRD2 = (addedHRD2)/3
print("Average Result : \(addedHRD)")
print("Average Result : \(addedHRD2)")
//:  Imagine that partway through the day a user has taken 3,467 steps out of the 10,000 step goal. Create constants `steps` and `goal`. Both will need to be of type `Double` so that you can perform accurate calculations. `steps` should be assigned the value 3,467, and `goal` should be assigned 10,000. Create a constant `percentOfGoal` that equals an expression that evaluates to the percent of the goal that has been achieved so far.

let steps: Double = 3467
let goal: Double = 10000
let percentG = (steps/goal)*100
print("Percent of goal archieved : \(percentG)")
/*:
[Previous](@previous)  |  page 2 of 8  |  [Next: Exercise - Compound Assignment](@next)
 */
