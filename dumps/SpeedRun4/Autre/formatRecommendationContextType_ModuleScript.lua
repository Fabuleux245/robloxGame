-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:21
-- Luau version 6, Types version 3
-- Time taken: 0.000503 seconds

local RecommendationContextTypes_upvr = require(script.Parent.Parent.Parent.Analytics.Enums).RecommendationContextTypes
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: RecommendationContextTypes_upvr (readonly)
	]]
	if arg1 == nil then
		return nil
	end
	return RecommendationContextTypes_upvr[arg1.rawValue()].rawValue()
end