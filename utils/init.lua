utils = {}

function utils.load()
end

function utils.debug(msg)
	if DEBUG then
		print("[DEBUG][" .. os.date() .. "] " .. msg)
	end
end