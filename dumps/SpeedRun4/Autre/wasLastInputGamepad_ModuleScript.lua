-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:49
-- Luau version 6, Types version 3
-- Time taken: 0.000445 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local isGamepadInput_upvr = require(script.Parent.isGamepadInput)
return function() -- Line 5, Named "wasLastInputGamepad"
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: isGamepadInput_upvr (readonly)
	]]
	return isGamepadInput_upvr(UserInputService_upvr:GetLastInputType())
end