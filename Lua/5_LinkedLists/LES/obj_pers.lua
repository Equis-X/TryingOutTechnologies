-- Modelo
pers = { nombre = "" , next = nil }

-- Objetos
function pers:new ( nuevoX )
	nuevoX = nuevoX or {}
	self._index = self
	setmetatable ( nuevoX , self )
	return nuevoX
end

-- AddLast
function pers:aL ( perX, perY )
	if perY.next == nil then
		perY.next = perX
	else
		pers:aL (perX, perY.next )
	end
end

-- Print
function pers:prn ( apers )
	io.write ( apers.nombre )
	if apers.next ~= nil then
		io.write(" |-> ")
		pers:prn ( apers.next )
	end
end
