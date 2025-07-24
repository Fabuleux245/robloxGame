-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:43
-- Luau version 6, Types version 3
-- Time taken: 0.000742 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local SceneAnalysisContext_upvr = require(ReactSceneUnderstanding.SceneAnalysisContext)
local useSourceAssets_upvr = require(ReactSceneUnderstanding.useSourceAssets)
return function(arg1) -- Line 72, Named "useAssetsInView"
	--[[ Upvalues[2]:
		[1]: SceneAnalysisContext_upvr (readonly)
		[2]: useSourceAssets_upvr (readonly)
	]]
	local module = {}
	local var5
	if arg1 then
		var5 = arg1
	else
		var5 = SceneAnalysisContext_upvr.use().viewportQueryOptions
	end
	module.viewportQueryOptions = var5
	return useSourceAssets_upvr(module).assetsInView
end