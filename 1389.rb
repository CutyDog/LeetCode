#Create Target Array in the Given Order

# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    output = []
    nums.zip(index).each do |n, i|
        output.insert(i, n)
    end  
    
    return output
end

nums = [0,1,2,3,4]
index = [0,1,2,2,1]
p create_target_array(nums, index)