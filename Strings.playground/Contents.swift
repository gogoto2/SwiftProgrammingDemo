//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground {
    print("'\(c)'")
}

//Unicode标量 \u{}
let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"

//标准等价
let b = (aAcute == aAcutePrecomposed) //真
print("aAcute: \(aAcute.count); aAcutePrecomposed: \(aAcutePrecomposed.count)")

//索引和区间
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end] //"o"
let range = start...end
let firstFive = playground[range] //"Hello"

//青铜挑战练习
//创建字符串常量empty并为它赋值空字符串：let empty = ""。判断字符串是否包含字符是很有用的。用empty的startIndex和endIndex属性来判断字符串是否真的为空。
let empty = ""
let startIndex = empty.startIndex
let endIndex = empty.endIndex
let isEmpty = (startIndex == endIndex)

//白银挑战练习
//把”Hello“字符串替换为从对应的Unicode标量创建的实例。
let hello = "Hello"
var unicodeHello = ""
for scalar in hello.unicodeScalars {
    let uc = String(format:"\\u{00%0X}", scalar.value)
    unicodeHello += uc
}
print(unicodeHello)
let a = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"
