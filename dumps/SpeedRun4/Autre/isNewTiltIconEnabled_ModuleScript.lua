-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.000671 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Enabled_upvr = require(RobloxGui.Modules.Chrome.Enabled)
local isNewInGameMenuEnabled_upvr = require(RobloxGui.Modules.isNewInGameMenuEnabled)
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: Enabled_upvr (readonly)
		[2]: isNewInGameMenuEnabled_upvr (readonly)
	]]
	local var3_result1 = Enabled_upvr()
	if var3_result1 then
		var3_result1 = not isNewInGameMenuEnabled_upvr()
	end
	return var3_result1
end