import UIKit

var str = "Hello, playground"



let sumCount = 4.1

let sumDouble = ceil(sumCount * Double(100))

sumDouble


let sumInt = Int(sumDouble)

//直接插入排序
//思想：每次将无序区的第一个记录按关键字插入到有序区的合适位置，并将有序区的长度加1。
func insertSort(array: inout [Int]) -> Void {
    guard array.count > 1 else {
        return
    }
    
    for i in 1..<(array.count-1) {// 从1开始，因为默认为有序区
        if array[i + 1] < array[i] {// 需要插入有序序列
            let temp = array[i + 1] //保存将要被有序区向后移顶替的值
            var j = i + 1// 有序区的序号,+1 为了不取到array[-1]
            repeat {// 数据移动，比temp大的都往后移
                j -= 1
                array[j + 1] = array[j]
            } while array[j - 1] > temp// 还需要移动
            
            // 插入
            array[j] = temp
        }
    }
}




