/*:
## Exercise - Create a Subclass

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game. The base class `Spaceship` has been provided for you below.
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
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

class SpeedySpaceship: Spaceship {
    var speed: Int

    init(name: String = "", health: Int = 0, position: Int = 0, speed: Int = 10) {
        self.speed = speed
        super.init(name: name, health: health, position: position)
    }

    override func moveLeft() {
        position -= speed
    }

    override func moveRight() {
        position += speed
    }

    func boostSpeed() {
        speed += 5
        print("Speed boosted to \(speed)!")
    }
}

let speedyShip = SpeedySpaceship(name: "Speedster", health: 100, position: 0, speed: 5)

print("Spaceship Name: \(speedyShip.name)")
print("Spaceship Health: \(speedyShip.health)")
print("Spaceship Position: \(speedyShip.position)")
print("Spaceship Speed: \(speedyShip.speed)")

speedyShip.moveLeft()
print("Spaceship Position after moving left: \(speedyShip.position)")

speedyShip.moveRight()
print("Spaceship Position after moving right: \(speedyShip.position)")

speedyShip.boostSpeed()

//:  Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.
class Fighter: Spaceship {
    var weapon: String
    var remainingFirePower: Int

    init(name: String = "", health: Int = 0, position: Int = 0, weapon: String = "", remainingFirePower: Int = 5) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }

    func fireWeapon() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
            print("Fired \(weapon)! Remaining firepower: \(remainingFirePower)")
        } else {
            print("No remaining firepower. Please reload!")
        }
    }
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
            print("Fired \(weapon)! Remaining firepower: \(remainingFirePower)")
        } else {
            print("You have no more fire power.")
        }
    }

}

let fighterShip = Fighter(name: "FighterX", health: 100, position: 0, weapon: "Laser Blaster", remainingFirePower: 5)

print("Fighter Name: \(fighterShip.name)")
print("Fighter Health: \(fighterShip.health)")
print("Fighter Position: \(fighterShip.position)")
print("Fighter Weapon: \(fighterShip.weapon)")
print("Fighter Remaining FirePower: \(fighterShip.remainingFirePower)")

fighterShip.fireWeapon()
fighterShip.fireWeapon()

//:  Create a new instance of `Fighter` called `destroyer`. A `Fighter` will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since `Fighter` inherits from `Spaceship`, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of `Fighter`. Knowing that, set `name` to "Destroyer," print `position`, then call `moveRight()` and print `position` again.
let destroyer = Fighter(name: "Destroyer", health: 100, position: 0, weapon: "Laser", remainingFirePower: 10)

print("Initial Position of Destroyer: \(destroyer.position)")
destroyer.moveRight()
print("Updated Position of Destroyer after moveRight(): \(destroyer.position)")

//:  Try to print `weapon` on `falcon`. Why doesn't this work? Provide your answer in a comment or a print statement below, and remove any code you added that doesn't compile.
// print(falcon.weapon) // Error: Value of type 'Spaceship' has no member 'weapon'
print("Weapon is not available for Spaceship: falcon")

//:  Add a method to `fighter` called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on `destroyer` a few times and print `remainingFirePower` after each method call.
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Override Methods and Properties](@next)
 */
