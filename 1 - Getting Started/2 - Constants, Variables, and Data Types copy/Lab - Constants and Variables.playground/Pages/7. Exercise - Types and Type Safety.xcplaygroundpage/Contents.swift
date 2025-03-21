/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal=7.13
var secondDecimal=1.91

//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueorfalse:Bool=true
//firstDecimal=trueorfalse
print("It will not compile as we cannot assign a boolean type value to a decimal type value or vice versa.")


//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var str:String="hello"
//firstDecimal=trueorfalse
print("It will not compile as we cannot assign a boolean type value to a decimal type value or vice versa.")


//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholenumber = 7
var firstdecimal : Double = 3.14
print("the line will not compile because whole-number is an Int and first-Decimal is a double they are differrent data types")
firstdecimal = Double(wholenumber)
print(firstdecimal)

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
