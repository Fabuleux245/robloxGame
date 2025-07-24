-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:41
-- Luau version 6, Types version 3
-- Time taken: 0.001326 seconds

local tbl_upvr = {
	Right = "Right";
	Left = "Left";
}
local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local useExternalEvent_upvr = require(script.Parent.useExternalEvent)
local VRService_upvr = game:GetService("VRService")
return function() -- Line 19, Named "useLaserPointerHand"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useExternalEvent_upvr (readonly)
		[4]: VRService_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(tbl_upvr.Right)
	useExternalEvent_upvr(VRService_upvr.LaserPointerTriggered, React_upvr.useCallback(function(arg1) -- Line 22
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if arg1.KeyCode == Enum.KeyCode.ButtonR1 or arg1.KeyCode == Enum.KeyCode.ButtonR2 or arg1.KeyCode == Enum.KeyCode.ButtonR3 or arg1.KeyCode == Enum.KeyCode.ButtonA or arg1.KeyCode == Enum.KeyCode.ButtonB or any_useState_result1_upvr ~= tbl_upvr.Right then
			any_useState_result2_upvr(tbl_upvr.Right)
		elseif arg1.KeyCode == Enum.KeyCode.ButtonL1 or arg1.KeyCode == Enum.KeyCode.ButtonL2 or arg1.KeyCode == Enum.KeyCode.ButtonL3 or arg1.KeyCode == Enum.KeyCode.ButtonX or arg1.KeyCode == Enum.KeyCode.ButtonY then
			if any_useState_result1_upvr ~= tbl_upvr.Left then
				any_useState_result2_upvr(tbl_upvr.Left)
			end
		end
	end))
	return any_useState_result1_upvr
end