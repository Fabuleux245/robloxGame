-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:14
-- Luau version 6, Types version 3
-- Time taken: 0.000774 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
return function(arg1, arg2, arg3, arg4, arg5) -- Line 6
	--[[ Upvalues[2]:
		[1]: SetCentralOverlay_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[7]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
			[2]: CentralOverlayType_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
			[7]: arg5 (readonly)
		]]
		local tbl = {}
		tbl.landscapeMenuDirection = arg1
		tbl.menuAnchorPosition = arg2
		tbl.menuAnchorSize = arg3
		tbl.referralSource = arg4
		tbl.universeId = arg5
		arg1_2:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.GameDetailsSquad, tbl))
	end
end