--[[
	Gloomy Helium
	LOVE2d prototype by Michael van Tricht
--]]

-- Setup constants.
STATES_DIR = "states"
DEBUG = true

-- Load necessities.
require("utils")

function love.load()
	-- Load utilities.
	utils.load()
	utils.debug("Utils loaded.")

	-- Print stdout in console when called.
	io.stdout:setvbuf("no")
	utils.debug("Disabling stdout vbuf.")

	-- Load only our main menu.
	changeState(require(STATES_DIR .. "/level_1"))
end

function love.update(dt)
	-- Update our current state.
	currentState.update(dt)
end

function love.draw()
	-- Set the scaling.
	love.graphics.scale(love.window.getWidth() / config.window.width, love.window.getHeight() / config.window.height)

	-- Draw the current FPS on the top right.
	love.graphics.print(love.timer.getFPS(), love.window.getWidth() - 20, 0)

	-- Draw the current state.
	currentState.draw()
end

function love.resize(w, h)
	utils.debug("Window has been resized.")
end

function love.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
end

function love.keypressed(key)
end

function love.keyreleased(key)
end

function love.focus(f)
end

function love.quit()
end

function changeState(state)
	if currentState then
		utils.debug("Quitted state: " .. currentState.name .. ".")
		currentState.quit()
	end
	currentState = state
	currentState.load()
	utils.debug("Loaded state: " .. currentState.name .. ".")
end