#Minimum Time Visiting All Points

# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
    output = 0
    n = points.size.to_i - 1
    n.times do |i|
        start_x = points[i].to_a[0].to_i
        start_y = points[i].to_a[1].to_i
        stop_x = points[i+1].to_a[0].to_i
        stop_y = points[i+1].to_a[1].to_i
        
        if (stop_x - start_x).abs >= (stop_y - start_y).abs then
            output += (stop_x - start_x).abs
        else 
            output += (stop_y - start_y).abs
        end    
    end   
    return output
end