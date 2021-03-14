#Decompress Run-Length Encoded List

# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    output = []
    slice_num = nums.each_slice(2).to_a
    for i in 0..slice_num.size do
        sl = slice_num[i].to_a
        n = sl[0].to_i
        n.times{
            output.push(sl[1])
        }
    end
    return output
end