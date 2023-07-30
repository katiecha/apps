import UIKit

var greeting:String = "Hello, playground"
print(greeting)

greeting = "I can write Swift!"
print(greeting)

let myInt:Int = 5
print(myInt)

var myDouble:Double = 0.5
print(myDouble)

var myBool:Bool = false
print(myBool)

func sayHello(){
    var greeting:String = "Hello, playground"
    print(greeting)
}
sayHello()

func sayHello(m:String){
    print(m)
}
sayHello(m:"I can code functions!")

func doAdd(a:Int, b:Int){
    var sum = a + b
    print(sum)
}
doAdd(a:2, b:3)

func letAdd(_ a:Int, secondNum b:Int) -> Int {
    var sum = a + b
    return sum
}

let result = letAdd(2, secondNum:3)
print(result)
