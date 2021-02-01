parse.(Int, read(stdin, String)|>split) .|> 
digits .|> sum |> maximum |> println
