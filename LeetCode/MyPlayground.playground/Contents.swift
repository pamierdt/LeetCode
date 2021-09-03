import UIKit
class Solution {
    func bubbleSort(_ list: inout [Int]) {
        guard list.count > 1 else {
           return
        }
        for i in 0 ..< list.count {
            for j in i + 1 ..< list.count {
                let a = list[i]
                let b = list[j]
                if b < a {
                    list[i] = b
                    list[j] = a
                } else {/* do nothing*/}
            }
        }
    }
        
    /// 选择排序
    func selectionSort(_ list: inout [Int]) {
        for j in 0 ..< list.count - 1 {
            var minIndex = j
            for i in j ..< list.count {
                if list[minIndex] > list[i] {
                    minIndex = i
                }
            }
            list.swapAt(j, minIndex)
        }
    }
    
    
    // 从排序数组中删除重复项
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // 空数组 和 一个元素的数组
        if nums.count < 2 {
            return nums.count
        }
        var numbers: Int = 0
        for i in 0 ..< nums.count {
            if nums[i]  != nums[numbers] {
                numbers += 1
                nums[numbers] = nums[i]
            }
        }
        return numbers + 1
    }
        // 双指针
//        if nums.count < 2 {
//            return nums.count
//        }
//        var fast = 1
//        var slow = 1
//        while fast < nums.count {
//            if nums[fast] != nums[fast-1] {
//                nums[slow] = nums[fast]
//                slow += 1
//            }
//            fast += 1
//        }
//        return slow

    // 最大利润
    func maxProfit(_ prices: [Int]) -> Int {
        /* 一次遍历 不可用
        var minPrice: Int = Int.max
        var maxProfit: Int = Int.min
        for p in prices {
            if (p < minPrice) {
                minPrice = p
            } else if (p - minPrice > maxProfit) {
                maxProfit = p - minPrice
            }
        }
         
        return maxProfit
        */
        // 1. 暴力搜索
        // 2. 动态规划
        // 3. 贪心算法
        var result: [Int] = []

        return 0
    }
    
    // 旋转数组
    func rotate(_ nums: inout [Int], _ k: Int) {

    }
    
    //爬楼梯
    func climbStairs(_ n: Int) -> Int {
        return 1
    }
    
    
    // 两个数组中重复的元素
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let len1 = nums1.count
        let len2 = nums2.count
        var bl: [Bool] = nums2.map { (_) -> Bool in
            return false
        }
        var array: [Int] = []
        for i in 0..<len1 {
            for j in 0..<len2 {
                if nums1[i] == nums2[j], bl[j] == false {
                    array.append(nums1[i])
                    bl[j] = true
                    break
                }
            }
        }
        var result: [Int] = Array(array)
        var e: Int = 0
        for i in array {
            result[e] = i
            e += 1
        }
        return result
    }

    func plusOne(_ digits: [Int]) -> [Int] {
        var results: [Int] = Array(digits)
        for i in (0...digits.count-1).reversed() {
            if results[i] == 9 {
                results[i] = 0
            } else {
                results[i] += 1
                return results
            }
        }
        var numbers: [Int] = []
        for _ in 0...digits.count {
            numbers.append(0)
        }
        numbers[0] = 1
        return numbers
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex = -1
        var i = 0
        while(i < nums.count) {
            if (nums[i] != 0) {
                if (zeroIndex >= 0) {
                    nums[zeroIndex] = nums[i]
                    nums[i] = 0
                    zeroIndex += 1
                }
            } else if (zeroIndex < 0) {
                zeroIndex = i
            }
            i += 1
        }
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                print(j)
            }
        }
        return false
    }
    
    //
}
var arrays: [Int] = [2, 0, 12, 2, 0, 3]
print(arrays)
Solution().selectionSort(&arrays)
print(arrays)
print(Solution().removeDuplicates(&arrays))
print(arrays)
Solution().moveZeroes(&arrays)
print(arrays)

print(Solution().twoSum([2,3,5,7], 5))
Solution().isValidSudoku([[]])
