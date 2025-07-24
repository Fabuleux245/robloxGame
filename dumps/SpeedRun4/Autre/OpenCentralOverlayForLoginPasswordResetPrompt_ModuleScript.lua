-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:07
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: SetCentralOverlay_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1) -- Line 8
		--[[ Upvalues[2]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
			[2]: CentralOverlayType_upvr (copied, readonly)
		]]
		arg1:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.LoginPasswordResetPrompt, {}))
	end
end