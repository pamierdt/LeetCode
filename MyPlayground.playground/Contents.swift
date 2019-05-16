import UIKit
class Solution {
    // 从排序数组中删除重复项
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // 空数组 和 一个元素的数组
        if nums.count <= 1 {
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
    
    //
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
    
}
var arrays: [Int] = [2, 0, 12, 2, 0, 3]
print(arrays)
Solution().moveZeroes(&arrays)
print(arrays)

print(Solution().twoSum([2,3,5,7], 5))
Solution().isValidSudoku([[]])
