a = {}
for i = 1,10 do
	a[i]=io.read()
	--a[#a+1]=value
end

for i=1,10 do
	io.write(i..")"..a[i].."\n")
end
