#Defanging an IP Address

# @param {String} address
# @return {String}
def defang_i_paddr(address)
    n = address.length - 1
    output = ""
    for i in 0..n do
        if address[i] == '.' then
            output.concat('[.]')
        else
            output.concat(address[i])
        end    
    end  
    return output 
end