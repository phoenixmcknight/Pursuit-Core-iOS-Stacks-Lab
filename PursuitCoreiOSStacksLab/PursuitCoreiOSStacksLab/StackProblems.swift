import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var stack = stack

    var largest1 = 0
    while !stack.isEmpty() {
        var popper = stack.pop()
       
        if popper! > largest1 {
            largest1 = popper!
        }
    }
    return largest1
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var stack = stack

    var array = [Int]()
    while !stack.isEmpty() {
        var popper = stack.pop()
        array.append(popper!)
    }
    return array.reduce(0, +)
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
  var stack = stack
    var newStack = Stack<T>()
    while !stack.isEmpty() {
        var popper = stack.pop()
        newStack.push(element: popper!)
    }
    return newStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stackOne = stackOne
var stackTwo = stackTwo
    var newStack1 = [Int]()
    var newStack2 = [Int]()
    while !stackOne.isEmpty() {
        let popper = stackOne.pop()
        newStack1.append(popper! as! Int)
    }
    while !stackTwo.isEmpty() {
        let popper = stackTwo.pop()
        newStack2.append(popper! as! Int)
    }
    if newStack1 == newStack2 {
        return true
    } else {
        return false
    }
   
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
//    let newStack = Stack<T>()
//    let testStack1 = Stack<T>()
//    newStack.push(element: newElement)
//    while !stack.isEmpty() {
//        let popper = stack.pop()
//        testStack1.push(element: popper!)
//}
//    while !testStack1.isEmpty() {
//        let popper = testStack1.pop()
//        newStack.push(element: popper!)
//    }
//    return newStack
   
    var reversedStack = reverse(stack: stack)
    reversedStack.push(element: newElement)
    return reverse(stack: reversedStack)
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    if str.count % 2 != 0 {
        return false
    }
        var stack1 = Stack<String>()
        for paren in str {
            switch str {
            case "(":
                stack1.push(element: String(paren))
            case ")":
                stack1.pop()
            default:
                print(paren)
            }
        }
    if stack1.isEmpty() == true {
        return true
    }else {
        return false
            
        }
}



//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

