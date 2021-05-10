function findallmax(A::AbstractVector)::AbstractVector{Int}
    res_array = Vector{Int}(undef, size(A))
    res_array[begin] = firstindex(A)
    n = firstindex(res_array)
    for i in firstindex(A) + 1:lastindex(A)
        if A[i] > A[res_array[begin]]
            res_array[begin] = i
            n = firstindex(res_array)
        elseif A[i] == A[res_array[begin]]
            n += 1
            res_array[n] = i
        end
    end
    return resize!(res_array, n)
end


println(findallmax([3, 4, 4, 5]))
