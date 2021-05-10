function insertsort!(a)
    len = length(a)
    for i in 2:len
        cur = a[i]
        j = i - 1
        while (j >= 1 && a[j] > cur)
            a[j + 1] = a[j]
            j -= 1
        end
        a[j + 1] = cur
    end
    return a
end


function insertsort(a)
    b = copy(a)
    return insertsort!(b)
end


function insertsortperm(b)
    a = copy(b)
    len = length(a)
    res_array = Array(1:len)
    for i in 2:len
        cur = a[i]
        j = i - 1
        while (j >= 1 && a[j] > cur)
            a[j + 1] = a[j]
            res_array[j + 1] = res_array[j]
            j -= 1
        end
        a[j + 1] = cur
        res_array[j + 1] = i
    end
    return res_array
end


function insertsortperm!(v, a)
    b = copy(a)
    res = insertsortperm(b)
    for i in 1:length(b)
        v[i] = res[i]
    end
    return v
end
