/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var duration: Int
    var averagePace: Double

    func postWorkoutStats() {
        print("Workout Summary:")
        print("Distance: \(distance) km")
        print("Duration: \(duration) minutes")
        print("Average Pace: \(averagePace) min/km")
    }
}

let myRun = RunningWorkout(distance: 5.0, duration: 30, averagePace: 6.0)
myRun.postWorkoutStats()

print("\n")
//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var goal: Int
    var steps: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var todaySteps = Steps(goal: 10000, steps: 5000)
print("Steps before: \(todaySteps.steps)")

todaySteps.takeStep()
print("Steps after: \(todaySteps.steps)")
print("\n")
/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
