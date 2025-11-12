/*:
## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
 */
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)") // Error: 'foo' is not accessible here because it was declared inside the for-loop's scope



//:  Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
var x = 10              // 'x' is defined in the outer/global scope
print("Initial x: \(x)") // This compiles because 'x' is accessible here

for _ in 0..<5 {
    x += 1             // 'x' is modified inside the loop, but 'x' was declared outside, so it's accessible and mutable here
    print("Modified x inside loop: \(x)") // Accessing 'x' inside loop is fine
}

print("Final x: \(x)")  // Still accessible here because 'x' was declared in the outer scope



//:  In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
func greeting(_ greeting: String?, name: String) {
    if let greeting = greeting {  // shadowing the parameter 'greeting' with unwrapped 'greeting'
        print("\(greeting), \(name).")
    } else {
        print("Hello, \(name).")
    }
}

// Call the function passing a non-nil greeting
greeting("Hi there", name: "Sara")

// Call the function passing nil for greeting
greeting(nil, name: "Alex")



//:  Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
class Car {
    var make: String
    var model: String
    var year: Int

    init(make: String, model: String, year: Int) {
        self.make = make   // shadowed parameter 'make' assigned to property 'make'
        self.model = model // shadowed parameter 'model' assigned to property 'model'
        self.year = year   // shadowed parameter 'year' assigned to property 'year'
    }
}


/*:
page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
 */
