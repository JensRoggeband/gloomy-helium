--[[
	Gloomy Helium
	LOVE2d prototype by Michael van Tricht
--]]

-- Variables
local _startState = "Game"
_debug = true
_w = _config.window.width
_h = _config.window.height
_wReal = love.window.getWidth()
_hReal = love.window.getHeight()

-- Objects
local StateManager = require "src.StateManager"
_utils = require "src.Utils"

function love.load()
	io.stdout:setvbuf("no")
	_utils.debug("Disabling stdout vbuf.")

	StateManager:setState(require("src.states.Game"))
end

function love.update(dt)
	StateManager:update(dt)
end

function love.draw()
	love.graphics.scale(_wReal / _w, _hReal / _h)
	if _debug then
		love.graphics.print(love.timer.getFPS(), _w - 20, 0)
	end
	StateManager:draw()
end

function love.resize(w, h)
	_utils.debug("Window has been resized.")
	_wReal = w
	_hReal = h
end

function love.mousepressed(x, y, button)
	StateManager:mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	StateManager:mousereleased(x, y, button)
end

function love.keypressed(key)
	StateManager:keypressed(key)
end

function love.keyreleased(key)
	StateManager:keyreleased(key)
end

function love.focus(f)
	StateManager:focus(f)
end

function love.quit()
	StateManager:quit()
end