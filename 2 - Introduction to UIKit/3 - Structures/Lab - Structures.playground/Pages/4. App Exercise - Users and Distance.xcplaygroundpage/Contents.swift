/*:
## App Exercise - Users and Distance
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

let user1 = User(name: "Jane Doe", age: 28, height: 1.65, weight: 60.0, activityLevel: 8)

print("User Info:")
print("Name: \(user1.name)")
print("Age: \(user1.age)")
print("Height: \(user1.height) meters")
print("Weight: \(user1.weight) kg")
print("Activity Level: \(user1.activityLevel) out of 10")
print("\n")
//:  Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
var yourName = User(name: "John Doe", age: 30, height: 1.75, weight: 72.0, activityLevel: 7)

print("User Info:")
print("Name: \(yourName.name)")
print("Age: \(yourName.age)")
print("Height: \(yourName.height) meters")
print("Weight: \(yourName.weight) kg")
print("Activity Level: \(yourName.activityLevel) out of 10")
print("\n")
/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.

 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
 
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

let distanceInMeters = Distance(meters: 1600)
print("Distance in meters: \(distanceInMeters.meters) meters")
print("Distance in feet: \(distanceInMeters.feet) feet")

let distanceInFeet = Distance(feet: 5249.344)
print("Distance in feet: \(distanceInFeet.feet) feet")
print("Distance in meters: \(distanceInFeet.meters) meters")
print("\n")
//:  Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
let mile = Distance(meters: 1600)
print("Distance in feet: \(mile.feet)")
print("\n")
//:  Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
let anotherDistance = Distance(feet: 5000)

print("Distance in feet: \(anotherDistance.feet)")
print("Distance in meters: \(anotherDistance.meters)")
print("\n")
/*:
[Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
 */
