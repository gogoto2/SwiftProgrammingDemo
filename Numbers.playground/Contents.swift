//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")
print("The maximum UInt value is \(UInt.max).")
print("Int max and min sum is \(922337203685477580 + 92233720368547758).")
print("The minimum UInt value is \(UInt.min).")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min).")

///创建整数实例
let numberOfPage: Int = 10 //显示声明类型
let numberOfChapters = 3 //还是Int类型，不过是编译器推断出来的

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

////接下来要有麻烦了！
//let firstBadValue: UInt = -1
//let secondBadValue: Int8 = 200

//整数操作符
print(10 + 20)
print(30 - 5)
print(5 * 6)

print(10 + 2 * 5)
print(30 - 5 - 5)

//圆括号是你的朋友
print((10 + 2) * 5)
print(30 - (5 - 5))

//整数除法
print(11 / 3)
print(-11 / 3) //总是向0舍入
//余数
print(11 % 3)
print(-11 % 3)

///快捷操作符
var x = 10
x += 10 //等同于：x = x + 10
print("x has had 10 added to it and is now \(x)")
x -= 5 //等同于：x = x - 5
print("x has had 5 subtracted from it and is now \(x)")

x *= 5
x /= 5
x %= 9
print("\(x)")

//溢出操作符
let y: Int8 = 120
//let z = y + 10 //值溢出，触发陷阱

//溢出操作符
var z = y &+ 10
print("120 &+ 10 is \(z)")
z = z &- 10
print("-126 &- 10 is \(z)")

//转换整数类型
//Swift特性，由你来决定怎么做类型转换，为了保证编程的安全和正确性（不会发生丢失精度）
let a: Int16 = 200
let b: Int8 = 50
//let c = a + b //啊哦
let c = a + Int16(b)
print(c)

//浮点数
let d1 = 1.1 //隐式Double声明
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)

if d1 == d2 {
    print("d1 and d2 are the same!")
}
print("d1 + 0.1 is \(d1 + 0.1)")
//总之浮点数背后有着令人头疼的细节
if d1 + 0.1 == 1.2 {
    print("d1 + 01 is equal to 1.2")
}
