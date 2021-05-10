function reverse_user!(a)
    leng = length(a)

    for i in 0:fld((leng - 1), 2)
        a[i + 1], a[leng - i] = a[leng - i], a[i + 1]
    end

    return a
end
