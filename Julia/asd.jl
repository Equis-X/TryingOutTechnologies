include("add.jl")

println("GENERADOR DEL 1 AL 3.\n\aPonga la cantidad de veces que desea generar: ")
for x = 1 : parse(Int,readline())
    J() 
    varx = rand(("Uno","Dos","Tres"),1)
    println(varx[1])
end
