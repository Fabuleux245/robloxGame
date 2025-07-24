-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:28
-- Luau version 6, Types version 3
-- Time taken: 0.000416 seconds

local safelyAccessProperty_upvr = require(script:FindFirstAncestor("SceneUnderstanding").safelyAccessProperty)
return function(arg1) -- Line 26, Named "isSourceAsset"
	--[[ Upvalues[1]:
		[1]: safelyAccessProperty_upvr (readonly)
	]]
	local var2
	if 0 >= safelyAccessProperty_upvr(arg1, "SourceAssetId", -1) then
		var2 = false
	else
		var2 = true
	end
	return var2
end