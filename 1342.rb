#Number of Steps to Reduce a Number to Zero

# @param {Integer} num
# @return {Integer}
def number_of_steps (num)
    count = 0
    until num == 0
        if num.even? then
            num = num / 2
            count += 1
        else
            num = num - 1
            count += 1
        end
    end
    return count
end