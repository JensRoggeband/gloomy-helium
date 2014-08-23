local PlayerShip = {}

function PlayerShip:load()
	self.w = 40
	self.h = 40
	self.x = (_w / 2) - self.w
	self.y = _h - self.h
	self.speed = 2
end

function PlayerShip:update(dt)
	if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
		self:move(0, -self.speed)
	end
	if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
		self:move(0, self.speed)
	end
	if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
		self:move(-self.speed, 0)
	end
	if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
		self:move(self.speed, 0)
	end
end

function PlayerShip:draw()
	love.graphics.rectangle("fill", PlayerShip.x, PlayerShip.y, PlayerShip.w, PlayerShip.h)
end

function PlayerShip:move(x, y)
	self.x = self.x + x
	self.y = self.y + y
end

return PlayerShip