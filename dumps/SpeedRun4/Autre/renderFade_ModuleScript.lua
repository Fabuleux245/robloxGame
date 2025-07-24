-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:31
-- Luau version 6, Types version 3
-- Time taken: 0.000647 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
return function(arg1, arg2) -- Line 6, Named "renderFade"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local module = {}
	module.Rotation = arg1
	module.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1 - arg2), NumberSequenceKeypoint.new(0.5, arg2), NumberSequenceKeypoint.new(1, arg2)})
	return React_upvr.createElement("UIGradient", module)
end