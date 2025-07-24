-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:48
-- Luau version 6, Types version 3
-- Time taken: 0.000726 seconds

local Parent = script:FindFirstAncestor("PlayerContextualMenu").Parent
local CentralOverlay_upvr = require(Parent.CentralOverlay)
local RobloxAppEnums_upvr = require(Parent.RobloxAppEnums)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: CentralOverlay_upvr (readonly)
		[2]: RobloxAppEnums_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[3]:
			[1]: CentralOverlay_upvr (copied, readonly)
			[2]: RobloxAppEnums_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		arg1_2:dispatch(CentralOverlay_upvr.Actions.SetCentralOverlay(RobloxAppEnums_upvr.CentralOverlayType.PlayerContextualMenu, arg1))
	end
end