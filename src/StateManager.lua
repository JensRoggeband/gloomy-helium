local StateManager = {}

local currentState = nil

function StateManager.setState(state)
	if currentState then
		utils.debug("Quitted state: " .. currentState.name .. ".")
		currentState.quit()
	end
	currentState = state
	currentState.load()
	utils.debug("Loaded state: " .. currentState.name .. ".")
end

function StateManager.update(dt)
	currentState.update(dt)
end

function StateManager.draw()
	if currentState then
		currentState.draw()
	end
end

function StateManager.mousepressed(x, y, button)
end

function StateManager.mousereleased(x, y, button)
end

function StateManager.keypressed(key)
end

function StateManager.keyreleased(key)
end

function StateManager.focus(f)
end

function StateManager.quit()
end

return StateManager