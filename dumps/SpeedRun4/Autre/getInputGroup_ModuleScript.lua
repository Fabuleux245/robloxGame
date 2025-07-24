-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:12
-- Luau version 6, Types version 3
-- Time taken: 0.000736 seconds

local getFFlagDebugLuaAppAlwaysUseGamepad_upvr = require(script.Parent.Parent.SharedFlags).getFFlagDebugLuaAppAlwaysUseGamepad
local InputTypeConstants_upvr = require(script.Parent.InputTypeConstants)
local InputTypeMap_upvr = require(script.Parent.InputTypeMap)
return function(arg1) -- Line 11, Named "getInputGroup"
	--[[ Upvalues[3]:
		[1]: getFFlagDebugLuaAppAlwaysUseGamepad_upvr (readonly)
		[2]: InputTypeConstants_upvr (readonly)
		[3]: InputTypeMap_upvr (readonly)
	]]
	if getFFlagDebugLuaAppAlwaysUseGamepad_upvr() then
		return InputTypeConstants_upvr.Gamepad
	end
	local var4 = InputTypeMap_upvr[arg1]
	if not var4 then
		var4 = InputTypeConstants_upvr.None
	end
	return var4
end