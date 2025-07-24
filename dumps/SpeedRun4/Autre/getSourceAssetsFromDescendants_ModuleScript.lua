-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:26
-- Luau version 6, Types version 3
-- Time taken: 0.000622 seconds

local SceneUnderstanding = script:FindFirstAncestor("SceneUnderstanding")
local isSourceAsset_upvr = require(SceneUnderstanding.isSourceAsset)
local findSourceAssetsFromDescendant_upvr = require(SceneUnderstanding.findSourceAssetsFromDescendant)
return function(arg1) -- Line 17, Named "getSourceAssetsFromDescendants"
	--[[ Upvalues[2]:
		[1]: isSourceAsset_upvr (readonly)
		[2]: findSourceAssetsFromDescendant_upvr (readonly)
	]]
	local module = {}
	for _, v in arg1 do
		if isSourceAsset_upvr(v) then
			table.insert(module, v)
		end
		for _, v_2 in findSourceAssetsFromDescendant_upvr(v) do
			if not table.find(module, v_2) then
				table.insert(module, v_2)
			end
		end
	end
	return module
end