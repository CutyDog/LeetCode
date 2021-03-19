#Range Sum of BST

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root

# @param {Integer} low
# @param {Integer} high
# @return {Integer}



def range_sum_bst(root, low, high)
    result = 0
    unless root.nil?
        puts result
        
        result += root.val if root.val >= low && root.val <= high
        result += range_sum_bst(root.right, low, high) unless root.right.nil?
        result += range_sum_bst(root.left, low, high) unless root.left.nil?
    end
    return result
end