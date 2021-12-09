-- Model
node = {content = nil, next=nil}

-- Constructor
function node:new ( nn )
    nn = nn or {}
    self._index = self
    setmetatable ( nn, self )
    return nn
end