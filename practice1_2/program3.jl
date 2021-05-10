function bubblesort!(a)
    leng = length(a)
    for i in 1:leng - 1
        for j in 2:leng
            if a[j - 1] > a[j]
                a[j - 1], a[j] = a[j], a[j - 1]
            end
        end
    end
    return a
end


function bubblesort(a)
    b = copy(a)
    return bubblesort!(b)
end


function bubblesortperm(a)
    b = copy(a)
    leng = length(a)
    res_array = Array(1:leng)
    for i in 1:leng - 1
        for j in 2:leng
            if b[j - 1] > b[j]
                b[j - 1], b[j] = b[j], b[j - 1]
                res_array[j - 1], res_array[j] = res_array[j], res_array[j - 1]
            end
        end
    end
    return res_array
end


function bubblesortperm!(v, a)
    b = copy(a)
    res = bubblesortperm(b)
    for k in 1:length(b)
        v[k] = res[k]
    end
    return v
end
