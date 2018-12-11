import UIKit


//flatMap是在处理一个容器而不是数组，这样可以更好地理解它。
let nestedArray = [[1,2,3], [4,5,6]]

let flattenedArray = nestedArray.flatMap { $0 }
flattenedArray // [1, 2, 3, 4, 5, 6]


//写上面的例子时，我想做一件无比简单的事情 —— 把每个元素乘以 2，就像map一样。但是结果是这样的：
//在flatMap中 $0 指的是数组中的数组！我竟然没想到！所以如果你想把数组中的元素全部乘以某个数字，需要再深入一层使用map：
let nestedArray1 = [[1,2,3], [4,5,6]]
let flattenedArray1 = nestedArray.flatMap {  $0.map { $0 * 2 } }
flattenedArray1 // [1, 2, 3, 4, 5, 6]



//Swift 4.1中引入了compactMap新函数
let optionalInts: [Int?] = [1, 2, nil, 4, nil, 5]
let ints = optionalInts.compactMap { $0 } //compactMap，可以把一个集合中的空值去除，并且返回一个去除nil值得数组
ints // [1, 2, 4, 5] - this is an [Int]


//func createPerson() throws -> Person {
//    guard let age = age, let name = name
//        where name.characters.count > 0 && age.characters.count > 0
//        else {
//            throw InputError.InputMissing
//    }
//
//    guard let ageFormatted = Int(age) else {
//        throw InputError.AgeIncorrect
//    }
//
//    return Person(name: name, age: ageFormatted)
//}
