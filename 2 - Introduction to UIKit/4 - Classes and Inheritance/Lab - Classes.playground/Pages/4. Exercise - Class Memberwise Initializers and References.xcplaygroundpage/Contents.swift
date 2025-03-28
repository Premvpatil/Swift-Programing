/*:
## Exercise - Class Memberwise Initializers and References

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
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
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        print("\(name)'s health is now \(health)")
    }
}

class Fighter: Spaceship {
    var weapon: String
    var remainingFirePower: Int
    
    init(name: String = "", health: Int = 0, position: Int = 0, weapon: String = "", remainingFirePower: Int = 5) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
            print("\(name) fired the \(weapon)! Remaining firepower: \(remainingFirePower)")
        } else {
            print("\(name) has no more firepower.")
        }
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int

    init(name: String = "", health: Int = 0, position: Int = 0, weapon: String = "", remainingFirePower: Int = 5, shieldStrength: Int = 25) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
            print("\(name)'s shield was hit! Shield strength: \(shieldStrength)")
        } else {
            super.wasHit()
        }
    }
}

// Create an instance of Spaceship
let falcon = Spaceship(name: "Falcon", health: 100, position: 0)
print("Spaceship: \(falcon.name), Health: \(falcon.health), Position: \(falcon.position)")

// Create an instance of Fighter
let fighter = Fighter(name: "Interceptor", health: 120, position: 0, weapon: "Laser", remainingFirePower: 10)
print("Fighter: \(fighter.name), Weapon: \(fighter.weapon), Remaining Firepower: \(fighter.remainingFirePower)")

// Move the fighter
fighter.moveRight()
print("Fighter's new position: \(fighter.position)")

// Fire the fighter's weapon
fighter.fire()

// Create an instance of ShieldedShip
let defender = ShieldedShip(name: "Defender", health: 150, position: 0, weapon: "Cannon", remainingFirePower: 5, shieldStrength: 30)
print("ShieldedShip: \(defender.name), Weapon: \(defender.weapon), Shield Strength: \(defender.shieldStrength)")

// Move the defender
defender.moveRight()
print("Defender's new position: \(defender.position)")

// Simulate the defender getting hit
defender.wasHit() // Shield strength decreases

// Create another reference to the same defender instance
let defenderClone = defender

// Modify the clone
defenderClone.wasHit() // Shield strength decreases again

// Print the values to see that both references point to the same object
print("Defender's shield strength: \(defender.shieldStrength)") // Should reflect the changes made through both references
print("Defender's health: \(defender.health)") // Should reflect any health changes made through both references

/*:
 Note that each class above has an error by the class declaration that says "Class has no initializers." Unlike structs, classes do not come with memberwise initializers because the standard memberwise initializers don't always play nicely with inheritance. You can get rid of the error by providing default values for everything, but it is common, and better practice, to simply write your own initializer. Go to the declaration of `Spaceship` and add an initializer that takes in an argument for each property on `Spaceship` and sets the properties accordingly.

 Then create an instance of `Spaceship` below called `falcon`. Use the memberwise initializer you just created. The ship's name should be "Falcon."
 */
print("Spaceship Name: \(falcon.name), Health: \(falcon.health), Position: \(falcon.position)")

/*:
 Writing initializers for subclasses can get tricky. Your initializer needs to not only set the properties declared on the subclass, but also set all of the uninitialized properties on classes that it inherits from. Go to the declaration of `Fighter` and write an initializer that takes an argument for each property on `Fighter` and for each property on `Spaceship`. Set the properties accordingly. (Hint: you can call through to a superclass's initializer with `super.init` *after* you initialize all of the properties on the subclass).

 Then create an instance of `Fighter` below called `destroyer`. Use the memberwise initializer you just created. The ship's name should be "Destroyer."
 */
// Create an instance of Fighter using the custom initializer
let destroyer = Fighter(name: "Destroyer", health: 100, position: 0, weapon: "Laser", remainingFirePower: 10)

print("Fighter Name: \(destroyer.name), Weapon: \(destroyer.weapon), Health: \(destroyer.health), Position: \(destroyer.position), Remaining Firepower: \(destroyer.remainingFirePower)")

/*:
 Now go add an initializer to `ShieldedShip` that takes an argument for each property on `ShieldedShip`, `Fighter`, and `Spaceship`, and sets the properties accordingly. Remember that you can call through to the initializer on `Fighter` using `super.init`.

 Then create an instance of `ShieldedShip` below called `defender`. Use the memberwise initializer you just created. The ship's name should be "Defender."
 */
print("ShieldedShip Name: \(defender.name), Weapon: \(defender.weapon), Health: \(defender.health), Position: \(defender.position), Remaining Firepower: \(defender.remainingFirePower), Shield Strength: \(defender.shieldStrength)")

//:  Create a new constant named `sameShip` and set it equal to `falcon`. Print out the position of `sameShip` and `falcon`, then call `moveLeft()` on `sameShip` and print out the position of `sameShip` and `falcon` again. Did both positions change? Why? If both were structs instead of classes, would it be the same? Why or why not? Provide your answer in a comment or print statement below.
let sameShip = falcon

// Print out the position of both sameShip and falcon
print("Position of sameShip: \(sameShip.position)")
print("Position of falcon: \(falcon.position)")

// Call moveLeft() on sameShip
sameShip.moveLeft()

// Print out the position of both sameShip and falcon again
print("Position of sameShip after moveLeft: \(sameShip.position)")
print("Position of falcon after moveLeft: \(falcon.position)")

/*:
 _Copyright © 2021 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 4 of 4
 */
