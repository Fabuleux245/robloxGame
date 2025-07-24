-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:41
-- Luau version 6, Types version 3
-- Time taken: 0.000313 seconds

local module = {}
module.__index = module
local ValueChangedSignal_upvr = require(script.Parent.ValueChangedSignal)
function module.new(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: ValueChangedSignal_upvr (readonly)
	]]
	return ValueChangedSignal_upvr.new(arg1)
end
return module