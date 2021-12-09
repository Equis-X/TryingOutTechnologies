--[[  Conway's Game Of Life Lib
        Made by HuascarOk
    Institutional ID: 1093960   ]]

function printLogo()
    local f = io.open('HGOL.txt',r)
    print(f:read('*a'))
end

function CreateGrid( coly, rowx, randn )
    local gr = {}
    math.randomseed(os.clock())
    for i=0,randn do
        math.random(0,1)
    end
    for i=1,coly do
        gr[i] = {}
        for j=1,rowx do
            gr[i][j] = math.random(0,1)
        end
    end
    return gr
end

function PrGrid( coly, rowx, gr)
    for i=1,coly do
        for j=1,rowx do
            if gr[i][j]~=0 then
                io.write('# ')
            else
                io.write('  ')
            end
        end
        io.write('\n')
     end
end

function SumVeci( coly, rowx, gr)
    local next=old
    for i=1,coly do
        for j=1,rowx do
            local sum = 0
            local state=gr[i][j]
            sum = sumVeciCell( i, j, gr, coly, rowx )
            if sum == 3 then
                state=1
            elseif sum<2 or sum>3 then
                state=0
            elseif (sum==2 or sum==3) and state==1 then
                state=1
            end
            next[i][j]=state
        end
    end
    return next
end

function sumVeciCell( x, y, gr, co, ro )
    local sum=0
    for i=-1,1 do
        for j=-1,1 do
            local col=(x+i+co)%co
            if col == 0 then col = co end
            local row=(y+j+ro)%ro
            if row == 0 then row = ro end
            sum=sum+gr[col][row]
        end
    end
    sum=sum-gr[x][y]
    return sum
end