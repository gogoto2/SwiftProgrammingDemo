//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var myFirstInt: Int = 0

//for i in 1...5 {
for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
//    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

//控制转移语句
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 100 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    //爆能枪开火！
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}

//白银挑战练习
//Fizz Buzz是用来练习除法的游戏。用如下规则实现这个游戏：对于给定区间内的每个值，如果当前的数字能被3整除，就打印FIZZ。如果能被5整除，
//就打印BUZZ。如果能同时被3和5整除，就打印FIZZ BUZZ。如果既不能被3也不能被5整除，就直接打印这个数字。
//      举个例子，对于1~10的区间，玩Fizz Buzz游戏会得到这样的结果：1，2，FIZZ,4,BUZZ,FIZZ,7,8,FIZZ,BUZZ.
//      计算机喜欢玩Fizz Buzz。这个游戏很适合用循环和条件语句实现。在0~100的区间内进行循环，并正确地为区间内的每个数字打印FIZZ、BUZZ或者FIZZ BUZZ。
//      利用if/else条件语句和switch语句解决这个问题可以获得附加分。在使用switch时，要确保在各个分支中针对元组进行匹配。

for i in 0...100 {
    let fizzBuzz = (i%3, i%5)
    switch fizzBuzz {
    case (0, 0):
        print("FIZZ BUZZ")
    case (0, _):
        print("FIZZ")
    case (_, 0):
        print("BUZZ")
    default:
        print(i)
    }
}


