-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:27
-- Luau version 6, Types version 3
-- Time taken: 0.000798 seconds

local module_upvr = {}
local tbl_2_upvr = {
	__tostring = function(arg1) -- Line 33, Named "__tostring"
		return string.format("RoactHostChangeEvent(%s)", arg1.name)
	end;
}
local tbl = {}
local roblox_upvr = require(script.Parent.Parent["Type.roblox"])
function tbl.__index(arg1, arg2) -- Line 39
	--[[ Upvalues[3]:
		[1]: roblox_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local module = {
		[roblox_upvr] = roblox_upvr.HostChangeEvent;
	}
	module.name = arg2
	setmetatable(module, tbl_2_upvr)
	module_upvr[arg2] = module
	return module
end
setmetatable(module_upvr, tbl)
return module_upvr