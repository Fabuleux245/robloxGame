-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:21
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local getFormattedTags_upvr = require(Foundation.Utility.getFormattedTags)
local Flags_upvr = require(Foundation.Utility.Flags)
local React_upvr = require(Foundation.Parent.React)
local TagsContext_upvr = require(script.Parent.TagsContext)
return function(arg1) -- Line 13, Named "useStyleTags"
	--[[ Upvalues[4]:
		[1]: getFormattedTags_upvr (readonly)
		[2]: Flags_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: TagsContext_upvr (readonly)
	]]
	local var2_result1_upvr = getFormattedTags_upvr(arg1)
	if not Flags_upvr.FoundationDisableStylingPolyfill then
		return var2_result1_upvr
	end
	local any_useContext_result1_upvr = React_upvr.useContext(TagsContext_upvr)
	React_upvr.useLayoutEffect(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: var2_result1_upvr (readonly)
			[2]: any_useContext_result1_upvr (readonly)
		]]
		if var2_result1_upvr ~= nil then
			any_useContext_result1_upvr(var2_result1_upvr)
		end
	end, {var2_result1_upvr})
	return var2_result1_upvr
end