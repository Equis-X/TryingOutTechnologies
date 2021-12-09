--Lib
dofile("lib1.lua")

--Main
io.write("Ingrese un numero: ")

while true do
	inX = CNRelease()
	if (inX == ranN) then
		io.write("\n".."\a".."Descubriste el numero!\n")
		break
	elseif inX < ranN then
		io.write("El numero es menor, sube un poco!\n")
	else
		io.write("El numero es mayor, baja un poco!\n")
	end
end
