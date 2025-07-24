-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

local isSourceAsset_upvr = require(script:FindFirstAncestor("SceneUnderstanding").isSourceAsset)
return function(arg1) -- Line 5, Named "findSourceAssetsFromDescendant"
	--[[ Upvalues[1]:
		[1]: isSourceAsset_upvr (readonly)
	]]
	local Parent = arg1.Parent
	while Parent do
		if isSourceAsset_upvr(Parent) then
			table.insert({}, Parent)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end