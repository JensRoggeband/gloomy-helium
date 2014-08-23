local Game = {name = 'Space level'}
local LevelList = require "src.states.Game.LevelList"
local currentLevel = nil

function Game:load()
	world = love.physics.newWorld(0, 9.81 * 64, true)
	currentLevel = LevelList[1]
	currentLevel.background:load()
	currentLevel.player:load()
end

function Game:update(dt)
	world:update(dt)
	currentLevel.background:update(dt)
	currentLevel.player:update(dt)
end

function Game:draw()
	currentLevel.background:draw()
	currentLevel.player:draw()
end

function Game:keypressed(key)
end

return Game