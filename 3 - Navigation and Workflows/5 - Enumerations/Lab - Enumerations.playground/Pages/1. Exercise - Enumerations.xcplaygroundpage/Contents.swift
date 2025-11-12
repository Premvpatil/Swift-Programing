/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit {
    case clubs
    case spades
    case diamonds
    case hearts
}

//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
var cardInHand = Suit.hearts
print(cardInHand)


//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
cardInHand = .spades
print(cardInHand)  // prints "spades"

//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("You will soon find what you seek.")
    case .spades:
        print("Challenges ahead will make you stronger.")
    case .diamonds:
        print("A valuable opportunity is coming your way.")
    case .hearts:
        print("Love and happiness are in your near future.")
    }
}

// Calling the function with different suits:
getFortune(cardSuit: .clubs)
getFortune(cardSuit: .spades)
getFortune(cardSuit: .diamonds)
getFortune(cardSuit: .hearts)

//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
struct Card {
    var suit: Suit
    var value: Int
}

//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
enum CardSuit: String {
    case clubs = "Clubs"
    case spades = "Spades"
    case diamonds = "Diamonds"
    case hearts = "Hearts"
}

struct PlayingCard {
    enum CardValue: String {
        case ace = "Ace"
        case two = "Two"
        case three = "Three"
        case four = "Four"
        case five = "Five"
        case six = "Six"
        case seven = "Seven"
        case eight = "Eight"
        case nine = "Nine"
        case ten = "Ten"
        case jack = "Jack"
        case queen = "Queen"
        case king = "King"
    }
    
    var suit: CardSuit
    var value: CardValue
}

// Usage examples:
var cardInHand1 = CardSuit.hearts
print(cardInHand1)  // prints "hearts"

cardInHand1 = .spades
print(cardInHand1)  // prints "spades"

let firstCard = PlayingCard(suit: .hearts, value: .ace)
let secondCard = PlayingCard(suit: .spades, value: .queen)

print("The first card is the \(firstCard.value.rawValue) of \(firstCard.suit.rawValue).")
print("The second card is the \(secondCard.value.rawValue) of \(secondCard.suit.rawValue).")


/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
