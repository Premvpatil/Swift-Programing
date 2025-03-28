/*:
## App Exercise - Activity Challenge
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week." 
 
 Using arrays of type `String`, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
var walkingChallenges: [String] = [
    "Walk 3 miles a day",
    "Take a 30-minute walk every morning",
    "Participate in a weekend hiking trip",
    "Walk 10,000 steps a day for a month"
]

// Array of running challenges
var runningChallenges: [String] = [
    "Run 5 km without stopping",
    "Complete a 30-day running streak",
    "Run 3 times a week for a month",
    "Join a local running club"
]

// Array of calisthenics challenges
var calisthenicsChallenges: [String] = [
    "Complete 100 push-ups in a week",
    "Do a plank for 5 minutes",
    "Master the pull-up challenge",
    "Perform 50 burpees a day for a week"
]

// Array of weightlifting challenges
var weightliftingChallenges: [String] = [
    "Lift a total of 500 pounds in a week",
    "Increase bench press weight by 10 pounds",
    "Complete a month of consistent deadlifts",
    "Perform 30 squats every day for a week"
]

print("Walking Challenges:")
print(walkingChallenges)

print("\nRunning Challenges:")
print(runningChallenges)

print("\nCalisthenics Challenges:")
print(calisthenicsChallenges)

print("\nWeightlifting Challenges:")
print(weightliftingChallenges)
print("\n")
//:  In your app you want to show all of these lists on the same screen grouped into sections. Create a `challenges` array that holds each of the lists you have created (it will be an array of arrays). Using `challenges`, print the first element in the second challenge list.
var challenges: [[String]] = [walkingChallenges, runningChallenges, calisthenicsChallenges, weightliftingChallenges]
let firstRunningChallenge = challenges[1][0]

print("First challenge in Running Challenges: \(firstRunningChallenge)")

//:  All of the challenges will reset at the end of the month. Use the `removeAll` to remove everything from `challenges`. Print `challenges`.
print("Challenges before removal:")
print(challenges)

challenges.removeAll()

print("\nChallenges after removal:")
print(challenges)

//:  Create a new array of type `String` that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
var committedChallenges: [String] = [
    "Walk 10,000 steps a day for a month",
    "Complete a 30-day running streak"
]

print("Committed Challenges:")
print(committedChallenges)

//:  Write an if statement that will use `isEmpty` to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
if committedChallenges.isEmpty {
    print("Please commit to a challenge.")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is: \(committedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}

/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Dictionaries](@next)
 */
