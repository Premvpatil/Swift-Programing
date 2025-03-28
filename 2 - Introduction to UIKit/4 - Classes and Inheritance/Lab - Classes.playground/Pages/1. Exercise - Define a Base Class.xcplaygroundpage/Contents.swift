/*:
## Exercise - Define a Base Class

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game.

 Create a `Spaceship` class with three variable properties: `name`, `health`, and `position`. The default value of `name` should be an empty string and `health` should be 0. `position` will be represented by an `Int` where negative numbers place the ship further to the left and positive numbers place the ship further to the right. The default value of `position` should be 0.
 */
class Spaceship {
    var name: String
    var health: Int
    var position: Int
  
    init(name: String = "", health: Int = 0, position: Int = 0) {
        self.name = name
        self.health = health
        self.position = position
    }
    // Method to move the spaceship to the left
    func moveLeft() {
        position -= 1
    }
    
    // Method to move the spaceship to the right
    func moveRight() {
        position += 1
    }
    
    // Method to handle when the spaceship is hit
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

let mySpaceship = Spaceship(name: "Star Voyager", health: 100, position: 0)

print("Spaceship Name: \(mySpaceship.name)")
print("Spaceship Health: \(mySpaceship.health)")
print("Spaceship Position: \(mySpaceship.position)")

//:  Create a `let` constant called `falcon` and assign it to an instance of `Spaceship`. After initialization, set `name` to "Falcon."
let falcon = Spaceship()

falcon.name = "Falcon"

print("Spaceship Name: \(falcon.name)")
print("Spaceship Health: \(falcon.health)")
print("Spaceship Position: \(falcon.position)")

//:  Go back and add a method called `moveLeft()` to the definition of `Spaceship`. This method should adjust the position of the spaceship to the left by one. Add a similar method called `moveRight()` that moves the spaceship to the right. Once these methods exist, use them to move `falcon` to the left twice and to the right once. Print the new position of `falcon` after each change in position.
falcon.moveLeft()  // Move left
print("Falcon's position after moving left: \(falcon.position)")

falcon.moveLeft()  // Move left again
print("Falcon's position after moving left: \(falcon.position)")

falcon.moveRight()  // Move right
print("Falcon's position after moving right: \(falcon.position)")

//:  The last thing `Spaceship` needs for this example is a method to handle what happens if the ship gets hit. Go back and add a method `wasHit()` to `Spaceship` that will decrement the ship's health by 5, then if `health` is less than or equal to 0 will print "Sorry, your ship was hit one too many times. Do you want to play again?" Once this method exists, call it on `falcon` and print out the value of `health`.
falcon.wasHit()
print("Falcon's health after being hit: \(falcon.health)")

falcon.wasHit()
print("Falcon's health after being hit: \(falcon.health)")

/*:
page 1 of 4  |  [Next: Exercise - Create a Subclass](@next)
 */
