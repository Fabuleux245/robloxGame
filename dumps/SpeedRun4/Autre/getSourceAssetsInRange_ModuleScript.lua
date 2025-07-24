-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:27
-- Luau version 6, Types version 3
-- Time taken: 0.000683 seconds

local SceneUnderstanding = script:FindFirstAncestor("SceneUnderstanding")
local RangeQueryOptions_upvr = require(SceneUnderstanding.options.RangeQueryOptions)
local isSourceAsset_upvr = require(SceneUnderstanding.isSourceAsset)
local findSourceAssetsFromDescendant_upvr = require(SceneUnderstanding.findSourceAssetsFromDescendant)
local getSourceAssetsFromDescendants_upvr = require(SceneUnderstanding.getSourceAssetsFromDescendants)
return function(arg1, arg2) -- Line 30, Named "getSourceAssetsInRange"
	--[[ Upvalues[4]:
		[1]: RangeQueryOptions_upvr (readonly)
		[2]: isSourceAsset_upvr (readonly)
		[3]: findSourceAssetsFromDescendant_upvr (readonly)
		[4]: getSourceAssetsFromDescendants_upvr (readonly)
	]]
	for _, v in workspace:GetPartBoundsInRadius(arg1, RangeQueryOptions_upvr.new(arg2).maxDistance) do
		if isSourceAsset_upvr(v) or 0 < #findSourceAssetsFromDescendant_upvr(v) then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return getSourceAssetsFromDescendants_upvr({})
end