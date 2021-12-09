-- Librerias
dofile('obj_hpers.lua')

-- declarations
persY = hpers:NEW()

-- Main
while true do
    io.write("1) Agregar a una persona\nA/O) Terminar/Imprimir\n")
    t_o = io.read()
    if t_o == "1" then
        io.write("Escriba un nombre: ")
        t_n = io.read()
        hpers:ADD ( persY, t_n )
        io.write ( '\n' )
    else
        break
    end
end
hpers:PRNT ( persY )
io.write ( '\n' )
