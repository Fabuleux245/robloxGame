-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:48
-- Luau version 6, Types version 3
-- Time taken: 0.001596 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local DiscoveryTypes = require(Parent.DiscoveryTypes)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
local GAME_CAROUSEL_SIDE_COMPACT_PADDING_upvr = DiscoveryTypes.Constants.GAME_CAROUSEL_SIDE_COMPACT_PADDING
local GAME_CAROUSEL_SIDE_WIDE_PADDING_upvr = DiscoveryTypes.Constants.GAME_CAROUSEL_SIDE_WIDE_PADDING
local useCollectionLayoutParams_upvr = require(CollectionViews.useCollectionLayoutParams)
local CollectionItemSize_upvr = require(CollectionViews.CollectionViewTypes).CollectionItemSize
return function(arg1) -- Line 15, Named "usePageSideMargin"
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: useAppPolicy_upvr (readonly)
		[3]: FormFactor_upvr (readonly)
		[4]: GAME_CAROUSEL_SIDE_COMPACT_PADDING_upvr (readonly)
		[5]: GAME_CAROUSEL_SIDE_WIDE_PADDING_upvr (readonly)
		[6]: useCollectionLayoutParams_upvr (readonly)
		[7]: CollectionItemSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local var13
	if useAppPolicy_upvr(function(arg1_3) -- Line 20
		return arg1_3.useGridPageLayout()
	end) then
		-- KONSTANTWARNING: GOTO [20] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 10. Error Block 14 start (CF ANALYSIS FAILED)
	local tbl = {}
	if useSelector_upvr(function(arg1_2) -- Line 16
		return arg1_2.FormFactor
	end) == FormFactor_upvr.COMPACT then
		var13 = GAME_CAROUSEL_SIDE_COMPACT_PADDING_upvr
	else
		var13 = GAME_CAROUSEL_SIDE_WIDE_PADDING_upvr
	end
	tbl.sideMargin = var13
	var13 = useCollectionLayoutParams_upvr(CollectionItemSize_upvr.Small, arg1, false, tbl)
	do
		return var13.sideMargin
	end
	-- KONSTANTERROR: [9] 10. Error Block 14 end (CF ANALYSIS FAILED)
end