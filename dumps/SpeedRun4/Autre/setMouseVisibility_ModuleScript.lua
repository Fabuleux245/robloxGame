-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:07
-- Luau version 6, Types version 3
-- Time taken: 0.000625 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local VRService_upvr = game:GetService("VRService")
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	if arg1 then
		UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
	else
		if VRService_upvr.VREnabled then
			UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
			return
		end
		UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end