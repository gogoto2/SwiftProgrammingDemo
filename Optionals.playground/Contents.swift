//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//var errorCodeString: String! = nil

//let anotherErrorCodeString: String = errorCodeString //能工作吗
//let yetAnotherErrorCodeString = errorCodeString //是可空实例还是隐式展开可空实例呢？

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
//print(errorCodeString)
//if errorCodeString != nil {
//    let theError = errorCodeString!
if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
//    print(theError)
//    if let errorCodeInteger = Int(theError) {
//        print("\(theError):\(errorCodeInteger)")
//    }
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
}

var upCastErrorDescription = errorDescription?.uppercased()
upCastErrorDescription?.append(" PLEASE TRY AGAIN.")
upCastErrorDescription

//nil合并运算符
//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//} else {
//    description = "No error"
//}

let description = errorDescription ?? "No error"

//青铜挑战练习
//一个人拥有的孩子数：Int还是Int?   答：Int比较合适， 只要两种情况，要么是0，要么大于0
//一个人饲养的宠物的名字：String还是String?   答：String?比较合适，可以没有名字，可以默认为猫啊狗啊什么的

//白银挑战练习
//本章开头提到，当可空实例为nil时方位其值会导致运行时错误。在可空实例为nil时用强制展开人为制造这个错误，然后研究一下这个错误，理解这个错误告诉了你什么信息。
var empty: String?
empty = nil
empty!
//Fatal error: Unexpectedly found nil while unwrapping an Optional value


