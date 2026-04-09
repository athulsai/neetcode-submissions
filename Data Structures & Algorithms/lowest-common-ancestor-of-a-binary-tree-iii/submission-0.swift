/**
 * Definition for a Node.
 * class Node {
 *     var val: Int
 *     var left: Node?
 *     var right: Node?
 *     var parent: Node?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.parent = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ p: Node?, _ q: Node?) -> Node? {
        var ptr1 = p
        var ptr2 = q

        while ptr1 !== ptr2 {
            if ptr1?.parent != nil {
                ptr1 = ptr1?.parent
            } else {
                ptr1 = q
            }

            if ptr2?.parent != nil {
                ptr2 = ptr2?.parent
            } else {
                ptr2 = p
            }
        }

        return ptr1
    }
}
