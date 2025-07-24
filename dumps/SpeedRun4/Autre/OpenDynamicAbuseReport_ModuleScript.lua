-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:37
-- Luau version 6, Types version 3
-- Time taken: 0.000537 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
return function(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: SetCentralOverlay_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 20
		--[[ Upvalues[3]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
			[2]: CentralOverlayType_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		arg1_2:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.DynamicAbuseReport, arg1))
	end
end