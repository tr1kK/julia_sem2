function calcsort(a)
    mx = maximum(a)
    new_array = zeros(Int, mx)
    res_array = Array{Int64, 1}()
    for k in a
        new_array[k] += 1
    end
    for i in 1:mx
        for _ in 1:new_array[i]
            append!(res_array, i)
        end
    end
    return res_array
end


println(calcsort([3, 5, 1, 2]))
println(calcsort([1, 100, 2, 4, 66, 3, 10]))
