function findallmax(iter)::AbstractVector{Int}
    mx = iter[firstindex(iter)]
    res_array = []
    for (i, v) in enumerate(iter)
        if v > mx
            mx = v
            res_array = [i]
        elseif v == mx
            push!(res_array, i)
        end
    end
    return res_array
end


println(findallmax([5, 5, 4, 1]))
