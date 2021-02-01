# using LinearAlgebra kellene
using LinearAlgebra
reshape(parse.(Int, read(stdin,String)|>split), (2,2)) |> det |> Int |> println
