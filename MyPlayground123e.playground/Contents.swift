import UIKit

var str = "Hello, playground"


//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var tempArr = [Int]()
//
//    for i in 0..<nums.count {
//        for j in i+1..<nums.count {
//            if nums[i] + nums[j] == target{
//                tempArr.append(i)
//                tempArr.append(j)
//            }
//        }
//    }
//    return tempArr//.sorted(by:<)
//}
//
//
//let arr =  twoSum([3, 2, 3], 6)
//
//print(arr)


//func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//    
//    var tempDouble = 0.0;
//    var tempArr = (nums1 + nums2).sorted(by: <)
//    
//    if tempArr.count % 2 == 0{
//        tempDouble = Double(tempArr[tempArr.count/2] + tempArr[tempArr.count/2 - 1]) / 2.0
//        
//    }else{
//        tempDouble = Double(tempArr[Int((floor(Double(tempArr.count) / 2.0)))])
//    }
//    
//    return tempDouble
//}
//
//let nums1 = [1, 2, 7]
//let nums2 = [4]
//
//let result = findMedianSortedArrays(nums1, nums2)
//
//print(result)


    
func reverse(_ x: Int) -> Int {
        var tempInt = abs(x);
        var tempArr = [String]()
        var isLast =  true
        while tempInt > 0{
            if isLast == true {
                if tempInt % 10 != 0{
                    tempArr.append(String(tempInt%10))
                    isLast = false
                }
            } else{
                tempArr.append(String(tempInt%10))
            }
            tempInt = tempInt/10
        }
        
        let numString = tempArr.joined(separator:"")
        if x > 0 {
            
            if ((Int(numString) ?? 0) < 2<<31 - 1){
                return Int(numString) ?? 0
            }else{
                return 0
            }
        }else{
            
            if ((Int(numString) ?? 0) > 2<<31 ){
                return 0
            }else{
            return -(Int(numString) ?? 0)
        }
   }
}

Int32.max


 let num = reverse(90100000)



//    guard let num1 = numString else{
//        return 0
//    }
//    if (Int(num1) ?? 0) < (1<<31) - 1 {
//        return Int(num1) ?? 0
//    }else{
//        return 0
//}
//
//
//
//    guard let num2 = numString else{
//        return 0
//    }
//
//    if (Int(num2) ?? 0) > (1<<31){
//        return 0
//    }else{
//        return -(Int(num2) ?? 0)
//


func isPalindrome(_ x: Int) -> Bool {
    if x == 0 {
        return true;
    }else if x < 0{
        return false
    }else{
        
        var tempInt = x;
        var tempArr = [String]()
        while tempInt > 0{
        tempArr.append(String(tempInt%10))
            tempInt = tempInt/10
        }
        
        let numString = tempArr.joined(separator:"")
        
        if Int(numString) == x{
            return true
        }else{
            return false
        }
    }

}


//let  bool = isPalindrome(12001)



func threeSum(_ nums: [Int]) -> [[Int]] {
    
    //var finaArr = [[Int]]()
    let myArr = [[Int]]()
    var finaArr: Set<[Int]> = Set(myArr)
    var finaArr1 = [[Int]]()
    for i in 0..<nums.count{
        
        for j in i + 1..<nums.count{
            
            for k in j + 1..<nums.count{
                
                if nums[i] + nums[j] + nums[k] == 0 && !(Set([[nums[i],nums[j], nums[k]]]).isSubset(of: finaArr))  {
                 let tempArr = Set([nums[i],nums[j], nums[k]])
                  finaArr.insert(Array(tempArr))
                    if finaArr1.count < finaArr.count{
                        finaArr1.append([nums[i],nums[j], nums[k]])
                    }
                }
                
            }
        }
    }
    
    return finaArr1;
}

let nums = [-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0]

 let re =  threeSum(nums)


print(re)
