local StateManager = {}

local currentState = nil

function StateManager:update(dt)
	if currentState then
		currentState:update(dt)
	end
end

function StateManager:draw()
	if currentState then
		currentState:draw()
	end
end

function StateManager:mousepressed(x, y, button)
end

function StateManager:mousereleased(x, y, button)
end

function StateManager:keypressed(key)
	if currentState then
		currentState:keypressed(key)
	end
end

function StateManager:keyreleased(key)
end

function StateManager:focus(f)
end

function StateManager:quit()
end

function StateManager:setState(state)
	if currentState then
		_utils.debug("Quitted state: " .. currentState.name .. ".")
		currentState:quit()
	end
	currentState = state
	currentState:load()
	_utils.debug("Loaded state: " .. currentState.name .. ".")
end

return StateManager