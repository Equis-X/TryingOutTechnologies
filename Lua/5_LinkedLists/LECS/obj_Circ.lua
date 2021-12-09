-- Lib1
dofile('obj_Node.lua')

-- Model
circular = { first = nil, last = nil, amm = 0 }

-- Constructor
function circular:new ( nc )
    nc = nc or {}
    self._index = self
    setmetatable ( nc, self )
    return nc
end

-- Functions[]
function circular:add ( nn, cl )
    cl.amm = cl.amm + 1
    newN = node:new( { content = nn } )
    if cl.first == nil then
        cl.first = newN
        cl.first.next = cl.first
        cl.last = newN
    else
        cl.last.next = newN
        newN.next = cl.first
        cl.last = newN
    end
end

function circular:prn ( cl )
    now = cl.first
    if now == nil then
        io.write ( 'It'.."'"..'s empty\n' )
    else
        while true do
            io.write (now.content..' |-> ')
            now = now.next
            if now == cl.first then
                break
            end
        end
        io.write('END\n')
    end
end