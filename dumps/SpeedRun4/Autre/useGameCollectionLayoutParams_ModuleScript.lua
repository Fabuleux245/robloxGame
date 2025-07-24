-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:08
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local CollectionViews = require(Parent.CollectionViews)
local CollectionItemSize_upvr = CollectionViews.CollectionViewTypes.CollectionItemSize
local GameTileLayoutType = require(Parent.GameTile).GameTileTypes.GameTileLayoutType
local tbl_upvr = {
	[GameTileLayoutType.Event] = CollectionItemSize_upvr.Large;
	[GameTileLayoutType.Wide] = CollectionItemSize_upvr.Medium;
	[GameTileLayoutType.Narrow] = CollectionItemSize_upvr.Small;
}
local useCollectionLayoutParams_upvr = CollectionViews.useCollectionLayoutParams
local GameCollectionLayoutCalculators_upvr = require(GameCollections.GameCollectionLayoutCalculators)
return function(arg1, arg2, arg3, arg4) -- Line 29, Named "useGameCollectionLayoutParams"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: CollectionItemSize_upvr (readonly)
		[3]: useCollectionLayoutParams_upvr (readonly)
		[4]: GameCollectionLayoutCalculators_upvr (readonly)
	]]
	local var9 = tbl_upvr[arg1]
	if not var9 then
		var9 = CollectionItemSize_upvr.Small
	end
	return useCollectionLayoutParams_upvr(var9, arg2, arg3, arg4, GameCollectionLayoutCalculators_upvr)
end