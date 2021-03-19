#Maximum Depth of Binary Tree

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
# @return {Integer}

def max_depth(root)
    if !root.nil?
        node_right = max_depth(root.right)
        node_left = max_depth(root.left)
        1 + [node_right, node_left].max
    else
        0
    end
end