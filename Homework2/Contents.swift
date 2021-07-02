import Foundation

/*
 
 Euler 6
 
 Sum square difference

 The sum of the squares of the first ten natural numbers is,

 1^2 + 2^2 + ... + 10^2 = 385
 The square of the sum of the first ten natural numbers is,

 (1+2+... +10)^ 2 = 55^ 2 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
 
 3025−385=2640
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */



var sumOfSquares = 0
var squareOfSum = 0
var sum = 0

for i in (1...100){
    
    sum += i   //will use later to find square of sum
    let square = pow(Double(i),2)  //pow function can be used with double instead of integer, so we cast
    sumOfSquares += Int(square)    //calculated the sum of squares
}

//taking the square of calculated sum
squareOfSum = Int(pow(Double(sum),2))

//the result
print(squareOfSum-sumOfSquares)

//----------------------------------------------------------------------------------------------

/*
 
 Euler 7
 
 10001st prime

 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?
 
 */


// every number is either the product of primes or is itself prime.

//prime number checking function:

func isPrime(number: Int) -> Bool{

    var notPrime : Bool = false;
    for i in 2...(number/2) {
        if(number % i == 0){
            notPrime = true
            break;
        }
    }
    if notPrime == false {
        return true
    } else {
        return false
    }

}


var num=4
var counter=2 //started from 2 because of prime numbers 2 and 3 will not be in the loop

while true{

    if isPrime(number: num)==true{
        counter += 1
        num+=1
    }
    else{
        num+=1
    }
    //for the 10001th prime:
    if counter==10001{
        print(num-1)
        break
    }
    
}
//output; 104743


//----------------------------------------------------------------------------------------------


// MARK: İki parametreli ve FARKLI tipli bir generic örneği yapınız... (T, U)


func carPlateNumber <T, U> (city: U, no: T) -> String {
    return "Plate number of \(city) is: \(no)."
}
print(carPlateNumber(city: "Istanbul", no: 34 ))


//----------------------------------------------------------------------------------------------


/*
 
UIViewController lifecycle

@loadView: the starting method for starting to load a view. Unless called manually, no special cases will be called once during the life of the ViewController.

@viewDidLoad: the most commonly used method. We initialize the member objects and variables in the class. After the class is created, this method will only be called once when the layout is to be laid, regardless of whether the view is rendered or disappeared.

 @ viewWillAppare: The view will be called when the view is about to be displayed.

 @ viewWillLayoutSubviews: Called after viewWillAppare, the child view will be laid out.

 @ viewDidLayoutSubviews: The child view has been laid out.

 @ viewDidAppare: Called when the view completes display.

 @viewWillDisappare: Called when the view is about to disappear.

 @ viewDidDisappare: Called when the view has disappeared.

 @ dealloc: Called when the controller is released.

*/

//----------------------------------------------------------------------------------------------


//MARK: Girilen bir sayının asal olup olmadığını bulan bir extension yazınız


extension Int {
    
    func isPrime() -> Bool{

        var notPrime : Bool = false;
        for i in 2...(self/2) {
            if(self % i == 0){
                notPrime = true
                break;
            }
        }
        if notPrime == false {
            return true
        } else {
            return false
        }

    }

}

var integerNumber = 5
integerNumber.isPrime()


//----------------------------------------------------------------------------------------------

/*
 MARK: Static keyword
 static keywords are used for functions which should not be overwritten later, they are in final state and can't be changed later by others

 */

struct personInfo {
    static var idNumber = 23252;
    
    var name: String
    var surname: String
}

var person = personInfo(name: "Stephen", surname: "King")
person.name="Owen"
print(person)   //no error
//person.idNumber = 35222   //error

//----------------------------------------------------------------------------------------------

/*
 MARK: If let - guard let preference
 
 
 When to use Guard:
 ------------------
 If you want to execute branching code when the unwrapping fails rather than when it succeeds.
 If you have to halt execution in the current enclosing scope if a value is incorrect or nil.
 When you need to know/want to log which optional didn’t have the correct value.
 If there’s potential to unwrap multiple optionals in the enclosing scope.
 If there’s potential that the number of optionals needed to be unwrapped can change.
 If you want the resulting unwrapped value to be available for the remainder of the scope and not just within a branching scope.
 
 func greet(_ name: String?) {
     guard let unwrapped = name else {
         print("You didn't provide a name!")
         return
     }

     print("Hello, \(unwrapped)!")
 }
 Using guard let lets you deal with problems at the start of your functions, then exit immediately. This means the rest of your function is the happy path – the path your code takes if everything is correct.
    
 
 When to use if let
 ------------------
 Want to execute branching code when the unwrapping succeeds rather than when it fails.
 When you can continue execution in the current enclosing scope if a value is incorrect or nil.
 Don’t care which values are nil or incorrect within the enclosing scope.
 If you only need to unwrap a small number of optionals and that number won’t change (avoid the pyramid of doom).
 If you only need the unwrapped value within a branching scope.
 
 Optional strings might contain a string like “Hello” or they might be nil – nothing at all.

 Consider this optional string:

 var name: String? = nil
 What happens if we use name.count? A real string has a count property that stores how many letters it has, but this is nil – it’s empty memory, not a string, so it doesn’t have a count.

 Because of this, trying to read name.count is unsafe and Swift won’t allow it. Instead, we must look inside the optional and see what’s there – a process known as unwrapping.

 A common way of unwrapping optionals is with if let syntax, which unwraps with a condition. If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.

 For example:

 if let unwrapped = name {
     print("\(unwrapped.count) letters")
 } else {
     print("Missing name.")
 }
 If name holds a string, it will be put inside unwrapped as a regular String and we can read its count property inside the condition. Alternatively, if name is empty, the else code will be run.
 
 Side Notes:
 ------------------
 Don’t forget you can also validate the resulting unwrapped optionals using multi-clause conditions.
 guard let val = optional, val < 5 {} else {return}
 if let val = optional, val < 5 {return} else {//Do something}
 
 We can also unwrap multiple optionals using this syntax as well. (Edit: Thanks to Pavel for pointing out that this syntax has replaced the where statement previously available in Swift, and thanks to Ben for pointing out a syntax error).
 
 Notes:
Used the terminology “value” in the above lists but it should be noted that you can also unwrap reference types as well.
 

 */



