level_1 = {name = 'Level 1'}

starLimit = 200

function level_1.load()
	-- Generate random positions for stars
	level_1.generateStars()
end

function level_1.update(dt)

end

function level_1.draw()
	-- Background color always the same.
	love.graphics.setBackgroundColor(25, 20, 20);

	-- Draw stars.
	for i = 1, starLimit do
		local thisX = stars[i].x
		local thisY = stars[i].y
		love.graphics.circle("fill", thisX, thisY, 1)
	end
end

function level_1.generateStars()
	stars = {}
	for i = 1, starLimit do
		stars[i] = {}
		stars[i].x = math.random() * love.graphics.getWidth()
		stars[i].y = math.random() * love.graphics.getHeight()
	end
end

return level_1