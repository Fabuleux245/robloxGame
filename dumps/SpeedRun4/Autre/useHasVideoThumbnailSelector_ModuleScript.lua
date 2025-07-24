-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:22
-- Luau version 6, Types version 3
-- Time taken: 0.001737 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GameInfosReducer_upvr = require(Parent.GameInfosRodux).GameInfosReducer
local getGameTileLayoutData_upvr = require(GameTile.getGameTileLayoutData)
return function(arg1, arg2) -- Line 10, Named "useHasVideoThumbnailSelector"
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: GameInfosReducer_upvr (readonly)
		[3]: getGameTileLayoutData_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1 = getGameTileLayoutData_upvr(useSelector_upvr(function(arg1_3) -- Line 11
		--[[ Upvalues[2]:
			[1]: GameInfosReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_3.Personalization[GameInfosReducer_upvr.key][arg1]
	end), arg2)
	local var12 = var5_result1
	if var12 then
		var12 = var5_result1.primaryMediaAsset
		if var12 then
			var12 = var5_result1.primaryMediaAsset.wideVideoAssetId
		end
	end
	if var12 == nil then
	else
	end
	return true
end