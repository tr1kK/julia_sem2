function nummax(iter) 
    mx, count = iter[firstindex(iter)], 0
    for v in iter
        if v > mx
            mx, count = v, 0
        end
        if v == mx
            count += 1
        end
    end
    return count   
end


println(nummax([4, 2, 3, 4, 1]))
