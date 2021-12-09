-- Load
function love.load()
	love.window.setFullscreen(false)
	scr, tme, timeA = 0, 20, 0
	butX = { x = 150, y = 150, size = 50}
	newFon = love.graphics.newFont(20)
	endFon = love.graphics.newFont(40)
	timeS = love.timer.getTime()
end

-- Update
function love.update()
	if timeA < tme then
		timeA = love.timer.getTime() - timeS
	end
	if love.keyboard.isDown("r") then
		timeS = love.timer.getTime()
		timeA, scr = 0, 0
	end
end

-- Draw
function love.draw()
	love.graphics.setFont(newFon)
	love.graphics.setColor(0,1,0)
	love.graphics.print(scr)
	love.graphics.print(timeA, 200)

	love.graphics.setColor(1,0,1)
	if timeA >= tme then
		love.graphics.setFont(endFon)
		love.graphics.print("GAME OVER!", love.graphics.getWidth()/2, love.graphics.getHeight()/2)
		love.graphics.print("Try again? -> Hit 'r'", love.graphics.getWidth()/2, (love.graphics.getHeight()/2)+100)
		love.graphics.print("Quit? -> Hit 'q'", love.graphics.getWidth()/2, (love.graphics.getHeight()/2)+200)
	else
		love.graphics.circle("fill", butX.x, butX.y, butX.size)
	end
end

-- Funcs
function love.mousepressed( x, y, bt, istouch)
	if bt == 1 and dist(butX.x, butX.y, love.mouse.getX(), love.mouse.getY()) < butX.size then
		scr = scr + 1
		butX.x = math.random(butX.size, love.graphics.getWidth() - butX.size)
		butX.y = math.random(butX.size, love.graphics.getHeight() - butX.size)
	end
end

function dist ( x1, y1, x2, y2)
	return math.sqrt( (y2-y1)^2 + (x2 - x1)^2 )
end

function love.keypressed(key, scancode, isrepeat)
	if key == "q" then
	   love.event.quit()
	end
 end