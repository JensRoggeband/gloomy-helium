GameSpace = {name = 'Space level.'}

function GameSpace.load()
	world = love.physics.newWorld(0, 9.81 * 64, true)
	GameSpace.generateBackground()
end

function GameSpace.update(dt)
	world:update(dt)
	GameSpace.updateBackground()
end

function GameSpace.draw()
	love.graphics.setBackgroundColor(25, 20, 20);
	GameSpace.drawBackground()
end

function GameSpace.updateBackground()
	for i = 0, starCount do
		stars[i].y = stars[i].y + stars[i].radius
		if stars[i].y > (love.window.getHeight()) then
			stars[i].y = stars[i].radius
		end
	end
end

function GameSpace.drawBackground()
	for i = 0, starCount do
		local thisX = stars[i].x
		local thisY = stars[i].y
		love.graphics.circle("fill", thisX, thisY, stars[i].radius)
	end
end

function GameSpace.generateBackground()
	stars = {}
	starCount = 0
	GameSpace.generateStars(100, 1)
	GameSpace.generateStars(50, 2)
end

function GameSpace.generateStars(starLimit, radius)
	for i = starCount, (starCount + starLimit) do
		stars[i] = {}
		stars[i].x = math.random() * love.graphics.getWidth()
		stars[i].y = math.random() * love.graphics.getHeight()
		stars[i].radius = radius
	end
	starCount = starCount + starLimit
end

return GameSpace