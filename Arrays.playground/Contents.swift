//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//var bucketList: Array<String>
//var bucketList: [String] = ["Climb Mt. Everest"]
var bucketList = ["Climb Mt. Everest"]
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")

var newItems = [
                "Fly hot air balloon to Fiji",
                "Watch the Lord of the Rings trilogy in one day",
                "Go on a walkabout",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"
                ]
//for item in newItems {
//    bucketList.append(item)
//}

bucketList += newItems

//上周末就看完了魔戒，把它移除
bucketList.remove(at: 2)
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)

var myronList = [
                "Climb Mt. Kilimanjaro",
                "Fly hot air balloon to Fiji",
                "Toboggan across Alaska",
                "Go on a walkabout in Australia",
//                "Find a triple rainbow",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"
                ]
let equal = (bucketList == myronList)

//不可变数组
let lunches = [
              "Cheeseburger",
              "Veggie Pizza",
              "Chicken Caesar Salad",
              "Black Bean Burrito",
              "Falafel Wrap"
              ]

//青铜挑战练习
//观察下面的数组。
//var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
//有一个Array类型的变量会告诉你toDoList是否有元素，利用文档找到它。
//isEmpty

//白银挑战练习
//把青铜挑战练习中的数组输入palyground。用循环反转这个数组的元素顺序，然后把结果输出到控制台。最后研究一下文档，看是否还有更方便的方法完成这个操作。
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
//var newList = Array<String>()
//for i in 0...toDoList.count-1 {
//    let index = toDoList.count - 1 - i
//    newList.append(toDoList[index])
//
var newList = Array(toDoList.reversed())
print(newList)

//黄金挑战练习
//我们经常会用到索引来操作数组。查看文档并寻找数组的一个方法，用来定位bucketList中"Fly hot air balloon to Fiji"的索引。
//注意：这个方法会返回index？（也就是空索引）。先展开这个值，然后用它计算数组中两个位置后的索引。最后，用这个新索引找到bucketList中那个位置上的字符串。
//没懂题主说的这两个位置是什么意思
if let index = bucketList.index(of: "Fly hot air balloon to Fiji") {
    print(bucketList[index])
}
