include("program3.jl")


function sort_matrix(a)
    for v in a
        bubblesort!(v)
    end
end
