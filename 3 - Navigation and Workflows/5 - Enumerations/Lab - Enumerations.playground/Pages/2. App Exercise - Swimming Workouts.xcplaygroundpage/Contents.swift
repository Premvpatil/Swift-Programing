struct SwimmingWorkout {
    enum Stroke {
        case freestyle
        case butterfly
        case backstroke
        case breaststroke
    }
    
    var distance: Double
    var time: Double
    var stroke: Stroke
    
    static var freestyleWorkouts: [SwimmingWorkout] = []
    static var butterflyWorkouts: [SwimmingWorkout] = []
    static var backstrokeWorkouts: [SwimmingWorkout] = []
    static var breaststrokeWorkouts: [SwimmingWorkout] = []
    
    func save() {
        switch stroke {
        case .freestyle:
            SwimmingWorkout.freestyleWorkouts.append(self)
        case .butterfly:
            SwimmingWorkout.butterflyWorkouts.append(self)
        case .backstroke:
            SwimmingWorkout.backstrokeWorkouts.append(self)
        case .breaststroke:
            SwimmingWorkout.breaststrokeWorkouts.append(self)
        }
    }
}

// Create instances
let workout1 = SwimmingWorkout(distance: 500, time: 600, stroke: .freestyle)
let workout2 = SwimmingWorkout(distance: 300, time: 400, stroke: .butterfly)

// Save workouts to the respective arrays
workout1.save()
workout2.save()

// Print results to verify
print("Freestyle Workouts: \(SwimmingWorkout.freestyleWorkouts)")
print("Butterfly Workouts: \(SwimmingWorkout.butterflyWorkouts)")
print("Backstroke Workouts: \(SwimmingWorkout.backstrokeWorkouts)")
print("Breaststroke Workouts: \(SwimmingWorkout.breaststrokeWorkouts)")

