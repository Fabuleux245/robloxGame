-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:32
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local function _() -- Line 7, Named "isSmallTouchScreen"
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	return Utility_upvr:IsSmallTouchScreen()
end
local VRService_upvr = game:GetService("VRService")
local TenFootInterface_upvr = require(RobloxGui.Modules.TenFootInterface)
return function() -- Line 14
	--[[ Upvalues[3]:
		[1]: Utility_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: TenFootInterface_upvr (readonly)
	]]
	local var8
	if _G.__TESTEZ_RUNNING_TEST__ then
		var8 = false
	else
		var8 = Utility_upvr:IsSmallTouchScreen()
	end
	local var9 = not var8
	if var9 then
		var8 = VRService_upvr.VREnabled
		var9 = not var8
		if var9 then
			var8 = TenFootInterface_upvr:IsEnabled()
			var9 = not var8
		end
	end
	return var9
end