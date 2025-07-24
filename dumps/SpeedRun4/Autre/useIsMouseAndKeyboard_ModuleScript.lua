-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:50
-- Luau version 6, Types version 3
-- Time taken: 0.000631 seconds

local Parent = script.Parent
local useInputType_upvr = require(Parent.useInputType)
local InputType_upvr = require(Parent.Parent.Enums.InputType)
return function() -- Line 11, Named "useIsMouseAndKeyboard"
	--[[ Upvalues[2]:
		[1]: useInputType_upvr (readonly)
		[2]: InputType_upvr (readonly)
	]]
	local var4
	if useInputType_upvr() ~= InputType_upvr.MouseAndKeyboard then
		var4 = false
	else
		var4 = true
	end
	return var4
end