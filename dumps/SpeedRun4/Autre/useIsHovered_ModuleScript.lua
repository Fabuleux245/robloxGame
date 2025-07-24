-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:11
-- Luau version 6, Types version 3
-- Time taken: 0.000711 seconds

local SocialCommon = script:FindFirstAncestor("SocialCommon")
local React_upvr = require(SocialCommon.Parent.React)
local InputUtilities_upvr = require(SocialCommon.Utils.InputUtilities)
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: InputUtilities_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	return any_useState_result1, React_upvr.useCallback(function(arg1, arg2) -- Line 11
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if InputUtilities_upvr.isPointerInput(arg2) then
			any_useState_result2_upvr(true)
		end
	end, {any_useState_result2_upvr}), React_upvr.useCallback(function(arg1, arg2) -- Line 17
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if InputUtilities_upvr.isPointerInput(arg2) then
			any_useState_result2_upvr(false)
		end
	end, {any_useState_result2_upvr})
end