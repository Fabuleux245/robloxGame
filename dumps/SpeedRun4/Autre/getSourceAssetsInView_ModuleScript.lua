-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:27
-- Luau version 6, Types version 3
-- Time taken: 0.000646 seconds

local SceneUnderstanding = script:FindFirstAncestor("SceneUnderstanding")
local queryViewport_upvr = require(SceneUnderstanding.queryViewport)
local isSourceAsset_upvr = require(SceneUnderstanding.isSourceAsset)
local findSourceAssetsFromDescendant_upvr = require(SceneUnderstanding.findSourceAssetsFromDescendant)
local getSourceAssetsFromDescendants_upvr = require(SceneUnderstanding.getSourceAssetsFromDescendants)
return function(arg1, arg2) -- Line 62, Named "getSourceAssetsInView"
	--[[ Upvalues[4]:
		[1]: queryViewport_upvr (readonly)
		[2]: isSourceAsset_upvr (readonly)
		[3]: findSourceAssetsFromDescendant_upvr (readonly)
		[4]: getSourceAssetsFromDescendants_upvr (readonly)
	]]
	return getSourceAssetsFromDescendants_upvr(queryViewport_upvr(arg1, function(arg1_2) -- Line 63
		--[[ Upvalues[2]:
			[1]: isSourceAsset_upvr (copied, readonly)
			[2]: findSourceAssetsFromDescendant_upvr (copied, readonly)
		]]
		local isSourceAsset_upvr_result1 = isSourceAsset_upvr(arg1_2)
		if not isSourceAsset_upvr_result1 then
			if 0 >= #findSourceAssetsFromDescendant_upvr(arg1_2) then
				isSourceAsset_upvr_result1 = false
			else
				isSourceAsset_upvr_result1 = true
			end
		end
		return isSourceAsset_upvr_result1
	end, arg2))
end