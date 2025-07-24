-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:06
-- Luau version 6, Types version 3
-- Time taken: 0.000936 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local function getAspectRatio_upvr(arg1) -- Line 11, Named "getAspectRatio"
	if typeof(arg1) == "table" then
		return {
			AspectRatio = arg1.AspectRatio;
			AspectType = arg1.AspectType;
			DominantAxis = arg1.DominantAxis;
		}
	end
	local module = {}
	module.AspectRatio = arg1
	module.AspectType = nil
	module.DominantAxis = nil
	return module
end
return React_upvr.memo(function(arg1) -- Line 36, Named "AspectRatio"
	--[[ Upvalues[2]:
		[1]: getAspectRatio_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return React_upvr.createElement("UIAspectRatioConstraint", getAspectRatio_upvr(arg1.value))
end)