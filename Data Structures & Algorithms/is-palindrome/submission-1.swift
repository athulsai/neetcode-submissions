class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s.count > 1 else { return true }
        var sArr = Array(s)

        var left = 0
        var right = s.count - 1

        while left < right {
            while left < right, !sArr[left].isLetter, !sArr[left].isNumber {
                left += 1
            }

            while left < right, !sArr[right].isLetter, !sArr[right].isNumber {
                right -= 1
            }

            if sArr[left].lowercased() != sArr[right].lowercased() {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
