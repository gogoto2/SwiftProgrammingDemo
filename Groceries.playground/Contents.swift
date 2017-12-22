//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//var groceryBag = Set<String>()
//var groceryBag = Set(["Apples", "Oranges", "Pineapple"])
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")

for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")
let friendGroceryBag: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
//并集
let commonGroceryBag = groceryBag.union(friendGroceryBag)

let roommatesGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
//交集
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
//不相交
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

//青铜挑战练习
//观察如下代码，这段代码用集合模拟两个人去过的城市。
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])
//找到Set的一个方法，根据myCities是否包含所有yourCities中的城市来返回布尔值。
//【提示：这种关系使得myCities成为yourCities的超集（superset)。】

//白银挑战练习
//本章用到了union(_:)和intersection(_:)等方法来创建新集合。不过有时候，你可能并不想创建新实例，而是想在已有的实例上原地改动。
//查看文档，找到Set类型的合适方法。重新修改本章的示例代码，把union(_:)和intersection(_:)替换为这些方法。
