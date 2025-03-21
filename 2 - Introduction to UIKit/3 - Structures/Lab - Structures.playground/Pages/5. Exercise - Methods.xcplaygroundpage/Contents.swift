/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var year: Int
    var genre: String

    func description() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year of Publication: \(year)")
        print("Genre: \(genre)")
    }
}

let myBook = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, genre: "Fiction")

myBook.description()
print("\n")
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var content: String
    var likes: Int
    
    mutating func like() {
        likes += 1
    }
}

var myPost = Post(content: "Just had a great day!", likes: 5)
print("Likes before: \(myPost.likes)")

myPost.like()
print("Likes after: \(myPost.likes)")
/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
