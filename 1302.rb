#Deepest Leaves Sum

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
def deepest_leaves_sum(root)
    output = 0
    nodes = []
    nodes << [root, 1]
    max_depth = maximum_depth(root)
    
    while !nodes.empty?
        node, depth = nodes.shift
        
        if depth == max_depth
            output += node.val
        end
        
        if !node.left.nil?
          nodes << [ node.left, depth + 1]
        end
        if !node.right.nil?
          nodes << [ node.right, depth + 1]
        end
    end
    return output
end

def maximum_depth(root)
    if root.nil?
        return 0
    end
        
    1 + [maximum_depth(root.left), maximum_depth(root.right)].max    
end