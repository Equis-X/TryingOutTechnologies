--[[  Conway's Game Of Life
        Made by HuascarOk
    Institutional ID: 1093960   ]]

dofile('GridLib.lua')
printLogo()
--[[\/ Size of grid]]
cols=20
--[[/\ Size of grid]]
rows=cols
local grid=CreateGrid(cols,rows,arg[1]) --GridID
old=grid
PrGrid(rows,cols,grid)
while true do
    os.execute('clear')
    printLogo()
    grid=SumVeci(cols,rows,grid)
    PrGrid(cols,rows,grid)
    os.execute('sleep 0.5') --GameSpeed
end