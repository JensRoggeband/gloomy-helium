local StarBackground = {}

function StarBackground:load()
	stars = {}
	starCount = 0
	StarBackground:generateStars(100, 1)
	StarBackground:generateStars(50, 2)
end

function StarBackground:update(dt)
	for i = 0, starCount do
		stars[i].y = stars[i].y + stars[i].radius
		if stars[i].y > _h then
			stars[i].y = stars[i].radius
		end
	end
end

function StarBackground:draw()
	love.graphics.setBackgroundColor(25, 20, 20);
	for i = 0, starCount do
		local thisX = stars[i].x
		local thisY = stars[i].y
		love.graphics.circle("fill", thisX, thisY, stars[i].radius)
	end
end

function StarBackground:generateStars(starLimit, radius)
	for i = starCount, (starCount + starLimit) do
		stars[i] = {}
		stars[i].x = math.random() * _w
		stars[i].y = math.random() * _h
		stars[i].radius = radius
	end
	starCount = starCount + starLimit
end

return StarBackground