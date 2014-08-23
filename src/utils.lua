local utils = {}

function utils.debug(msg)
	if _debug then
		print("[DEBUG][" .. os.date() .. "] " .. msg)
	end
end

return utils