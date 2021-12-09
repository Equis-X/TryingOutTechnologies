-- NodeImp
dofile('obj_pers.lua')

-- Model
hpers = {content = nil}

-- Constructor
function hpers:NEW ( hpc )
	hpc = hpc or {}
	self._index = self
	setmetatable ( hpc, self )
	return hpc
end

-- Functions
function hpers:ADD ( conjx, namex )
	newX = pers:new ( {nombre = namex} )
	if conjx.content == nil then
		conjx.content = newX
	else
		pers:aL ( newX, conjx.content )
	end
end

function hpers:PRNT ( conjx )
	if conjx.content ~= nil then
		pers:prn ( conjx.content )
	else
		io.write ( "It".."'".."s empty!\n" )
	end
end
