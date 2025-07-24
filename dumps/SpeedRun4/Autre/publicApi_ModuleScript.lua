-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:00
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

local var1_upvw = false
local module = {
	getSelfViewIsOpenAndVisible = function() -- Line 8, Named "getSelfViewIsOpenAndVisible"
		--[[ Upvalues[1]:
			[1]: var1_upvw (read and write)
		]]
		return var1_upvw
	end;
}
local selfViewVisibilityUpdatedSignal_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
function module.setSelfViewIsOpenAndVisible(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: selfViewVisibilityUpdatedSignal_upvr (readonly)
	]]
	var1_upvw = arg1
	selfViewVisibilityUpdatedSignal_upvr:fire()
end
return module