--Library
dofile("obj_cuenta.lua")

--Declarations
pri = cuenta:new()
sec = cuenta:new()

--Main
while true do
	io.write("\nBanCovid\nSeleccione la cuenta a la cual desea hacerle cambios:\n1)\n2)\ns)Salir\n")
	tIn = io.read()
	if tIn == "1" then
		while true do
			io.write("\nAcciones de la cuenta:\n a)Consulta de balance\n b)Deposito\n c)Retiro\n d)salir\n")
			tIn = io.read()
			if tIn == "a" then
				io.write("\n"..pri.balance.."\n")
			elseif tIn == "b" then
				io.write("\nInserte el monto: ")
				tIn1 = tonumber(io.read())
				cuenta.dp(pri,tIn1)
			elseif tIn == "c" then
				io.write("\nInserte el monto: \n")
				tIn1 = tonumber(io.read())
				cuenta.wd(pri,tIn1)
			elseif tIn == "d" then
				break
			else
				io.write("\nValor Invalido!\n")
			end
		end
	elseif tIn == "2" then
		while true do
			io.write("\nAcciones de la cuenta:\n a)Consulta de balance\n b)Deposito\n c)Retiro\n d)salir\n")
			tIn = io.read()
			if tIn == "a" then
				io.write("\n"..sec.balance.."\n")
			elseif tIn == "b" then
				io.write("\nInserte el monto: ")
				tIn1 = tonumber(io.read())
				cuenta.dp(sec,tIn1)
			elseif tIn == "c" then
				io.write("\nInserte el monto: \n")
				tIn1 = tonumber(io.read())
				cuenta.wd(sec,tIn1)
			elseif tIn == "d" then
				break
			else
				io.write("\nValor Invalido\n")
			end
		end
	elseif tIn == "s" then
		break
	else
		io.write("\nValor Invalido\n")
	end
end
