--[[
	Gloomy Helium
	LOVE2d prototype by Michael van Tricht
--]]

_debug = true
_startState = "Game"

StateManager = require "src.StateManager"
utils = require "src.Utils"

function love.load()
	io.stdout:setvbuf("no")
	utils.debug("Disabling stdout vbuf.")

	StateManager.setState(require("src.states.GameSpace"))
end

function love.update(dt)
	StateManager.update(dt)
end

function love.draw()
	love.graphics.scale(love.window.getWidth() / config.window.width, love.window.getHeight() / config.window.height)
	if _debug then
		love.graphics.print(love.timer.getFPS(), love.window.getWidth() - 20, 0)
	end
	StateManager.draw()
end

function love.resize(w, h)
	utils.debug("Window has been resized.")
end

function love.mousepressed(x, y, button)
	utils.debug("Window has been resized.")
	StateManager.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	StateManager.mousereleased(x, y, button)
end

function love.keypressed(key)
	StateManager.keypressed(key)
end

function love.keyreleased(key)
	StateManager.keyreleased(key)
end

function love.focus(f)
	StateManager.focus(f)
end

function love.quit()
	StateManager.quit()
end