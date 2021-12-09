-- Functions and callings
dofile('config.lua')
dofile('obj_Circ.lua')

-- Declarations
circ = circular:new( DefCirc )
circular:add ( 1, circ )
circular:add ( 2, circ )
circular:add ( 3, circ )
circular:add ( 4, circ )
circular:add ( 5, circ )

-- Main
circular:prn ( circ )
io.write('C\\E: '..circ.amm..'\n')
