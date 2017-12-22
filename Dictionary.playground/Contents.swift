//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
//let oldRemove = movieRatings.removeValue(forKey: "Dark City")
movieRatings["Dark City"] = nil

//循环
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value).")
}

for movie in movieRatings.keys {
    print("User has rated \(movie).")
}

let watchMovies = Array(movieRatings.keys)

//白银挑战练习
//把Array放进字典并不罕见。创建一个表示美国某州的字典，键表示郡（为保持简单，只放三个郡）。每个键会映射到一个数组，数组持有该郡的5个邮编。
//最后，只输出字典的邮编。
var meiguo = [
              "nanjing": ["210000", "210001", "210002", "210003", "210004"],
              "yangzhou": ["225000", "225001", "225002", "225003", "225004"],
              "xuzhou": ["221000", "221001", "221002", "221003", "221004"]
             ]

var outputZip = ""
for array in meiguo.values {
    for value in array {
        outputZip += String(format:"%@,", value)
    }
}

outputZip.remove(at: outputZip.index(before: outputZip.endIndex))
print("Georgia has the following zip codes: [\(outputZip)]")

//黄金挑战练习
//再做一遍白银挑战练习，不过这次打印出来的邮编格式要跟上面的示例一样。你可能需要在文档中查找如何用字符串字面量表示特殊字符。
//（举个例子，如果在字符串中表示换行符？）你可能需要查看print()函数的文档来使用参数terminator，这个参数默认在控制台打印的字符串后面添加换行符，但是这里需要别的行为。
//完成这个练习的方法有很多，但是不过其中一种方法是打印某些邮编时打印一个带一定数量空格的字符串。（具体多少空格需要你自己计算！）
var i: Int = 0
for (key, value) in meiguo {
    var outputFormat = ""
    for value in value {
        outputFormat += String(format:"%@,", value)
    }
    outputFormat.remove(at: outputFormat.index(before: outputFormat.endIndex))
    
    if key == "nanjing" {
        print("Georgia has the following zip codes: [\(outputFormat)")
    } else if key == "yangzhou" {
        print("                                      \(outputFormat)")
    } else {
        print("                                      \(outputFormat)]")
    }
}

