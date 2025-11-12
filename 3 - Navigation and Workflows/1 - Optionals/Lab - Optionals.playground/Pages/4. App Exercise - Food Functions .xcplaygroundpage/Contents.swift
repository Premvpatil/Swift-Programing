import Foundation
/*:
## App Exercise - Food Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Suppose you want your fitness tracking app to give users the ability to log food. Once food has been logged, users should be able to go back and see what they ate at a specific meal.
 
 Write a function that takes a `String` parameter where you will pass in either "Breakfast," "Lunch," or "Dinner." The function should then return the `Meal` object associated with that meal, or return `nil` if the user hasn't logged that meal yet. Note that a `Meal` object and a dictionary, `meals`, representing the meal log have been created for you below. Call the function one or twice and print the return value.
 */
struct Meal {
    let name: String
    let calories: Int
}

let meals: [String: Meal] = [
    "Breakfast": Meal(name: "Oatmeal", calories: 250),
    "Lunch": Meal(name: "Chicken Salad", calories: 450),
    "Dinner": Meal(name: "Steak", calories: 700)
]

func getMeal(for mealTime: String) -> Meal? {
    return meals[mealTime]
}

if let breakfastMeal = getMeal(for: "Breakfast") {
    print("Breakfast: \(breakfastMeal.name), Calories: \(breakfastMeal.calories)")
} else {
    print("No breakfast logged.")
}

if let snackMeal = getMeal(for: "Snack") {
    print("Snack: \(snackMeal.name), Calories: \(snackMeal.calories)")
} else {
    print("No snack logged.")
}


/*:
 iOS comes with a few different APIs for persistence, or saving data. You'll learn more about persistence in another lesson, but for now imagine what an app experience would be like if every time you opened the app all of your data was gone. That would be frustrating, right?
 
 Write a function that will check to see if your meal log (a dictionary like that in the previous exercise) is saved to the device. If it is, return the meal log. If it isn't, return an empty dictionary of type `[String: Any]`. The code you should use in this exercise for retrieving something saved to the device is `UserDefaults.standard.dictionary(forKey: "mealLog")`. This code will return an optional `[String: Any]`. If it returns a value, that is your meal log. If it returns `nil`, then no meal log has been saved. Call the function and print the return value.
 */
func loadMealLog() -> [String: Any] {
    if let savedMealLog = UserDefaults.standard.dictionary(forKey: "mealLog") {
        return savedMealLog
    } else {
        return [:]
    }
}

let mealLog = loadMealLog()
print(mealLog)

/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Failable Initializers](@next)
 */
