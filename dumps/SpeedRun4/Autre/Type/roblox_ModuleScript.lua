-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:40
-- Luau version 6, Types version 3
-- Time taken: 0.001043 seconds

local roblox_upvr = require(script.Parent["Symbol.roblox"])
local newproxy_result1_upvr = newproxy(true)
local tbl_upvr = {}
local function _(arg1) -- Line 32, Named "addType"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: roblox_upvr (readonly)
	]]
	tbl_upvr[arg1] = roblox_upvr.named("Roact"..arg1)
end
tbl_upvr.HostChangeEvent = roblox_upvr.named("Roact".."HostChangeEvent")
tbl_upvr.HostEvent = roblox_upvr.named("Roact".."HostEvent")
function tbl_upvr.of(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	if typeof(arg1) ~= "table" then
		return nil
	end
	return arg1[newproxy_result1_upvr]
end
getmetatable(newproxy_result1_upvr).__index = tbl_upvr
getmetatable(newproxy_result1_upvr).__tostring = function() -- Line 49
	return "RoactType"
end
return newproxy_result1_upvr