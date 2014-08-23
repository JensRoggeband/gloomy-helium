-- Backgrounds
local StarBackground = require "src.backgrounds.StarBackground"

-- Player objects
local PlayerShip = require "src.entities.PlayerShip"

-- Enemies

-- Maps

local LevelList = {
	[1] = {
		name = "Test",
		background = StarBackground,
		player = PlayerShip,
		music = nil,
		waves = {

		}
	}
}

return LevelList