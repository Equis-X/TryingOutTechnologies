--CuentaPrototypeTable
cuenta = {balance = 0}

--ObjectCreator
function cuenta:new (varX)
	varX = varX or {}
	self.__index = self
	setmetatable(varX,self)
	return varX
end

--Withdraw
function cuenta:wd (varX)
	if varX > self.balance then
		io.write("\nBalance insuficiente!\n")
	else
		self.balance = self.balance - varX
	end
end

--Deposit
function cuenta:dp (varX)
	self.balance = self.balance + varX
end
