-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:20
-- Luau version 6, Types version 3
-- Time taken: 0.000581 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local getVRFloorOffset_upvr = require(script.Parent.getVRFloorOffset)
local useExternalEvent_upvr = require(Parent.UIBlox).Core.Hooks.useExternalEvent
local VRService_upvr = game:GetService("VRService")
return function() -- Line 10
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: getVRFloorOffset_upvr (readonly)
		[3]: useExternalEvent_upvr (readonly)
		[4]: VRService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(getVRFloorOffset_upvr())
	useExternalEvent_upvr(VRService_upvr.UserCFrameChanged, function(arg1) -- Line 15
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: getVRFloorOffset_upvr (copied, readonly)
		]]
		if arg1 == Enum.UserCFrame.Floor then
			any_useState_result2_upvr(getVRFloorOffset_upvr())
		end
	end)
	return any_useState_result1
end