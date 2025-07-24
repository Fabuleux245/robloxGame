-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:26
-- Luau version 6, Types version 3
-- Time taken: 0.000721 seconds

local VRHub_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VR.VRHub)
return {
	Name = "LeaveGameIconHighlightEvent";
	StartEvent = function() -- Line 17, Named "StartEvent"
		--[[ Upvalues[1]:
			[1]: VRHub_upvr (readonly)
		]]
		VRHub_upvr:SetShowHighlightedLeaveGameIconToggled(true)
	end;
	StopEvent = function() -- Line 21, Named "StopEvent"
		--[[ Upvalues[1]:
			[1]: VRHub_upvr (readonly)
		]]
		VRHub_upvr:SetShowHighlightedLeaveGameIconToggled(false)
	end;
}