-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:44
-- Luau version 6, Types version 3
-- Time taken: 0.000663 seconds

local Parent = script.Parent.Parent
local getInputGroup_upvr = require(Parent.InputType).getInputGroup
local InputTypeConstants_upvr = require(Parent.InputType).InputTypeConstants
return function(arg1) -- Line 5, Named "isGamepadInput"
	--[[ Upvalues[2]:
		[1]: getInputGroup_upvr (readonly)
		[2]: InputTypeConstants_upvr (readonly)
	]]
	local var4
	if getInputGroup_upvr(arg1) ~= InputTypeConstants_upvr.Gamepad then
		var4 = false
	else
		var4 = true
	end
	return var4
end