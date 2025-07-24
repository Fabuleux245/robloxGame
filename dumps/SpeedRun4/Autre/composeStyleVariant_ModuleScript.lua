-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:27
-- Luau version 6, Types version 3
-- Time taken: 0.001224 seconds

local Dash_upvr = require(script:FindFirstAncestor("Foundation").Parent.Dash)
local function _(arg1, arg2) -- Line 10, Named "mergeProps"
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	local any_join_result1 = Dash_upvr.join(arg1, arg2)
	local var3
	if arg1.tag and arg2.tag then
		var3 = `{arg1.tag} {arg2.tag}`
	elseif arg1.tag then
		var3 = arg1.tag
	else
		var3 = arg2.tag
	end
	any_join_result1.tag = var3
	return any_join_result1
end
function composeStyleVariant(arg1, ...) -- Line 18
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	local any_copy_result1_upvr = Dash_upvr.copy(arg1)
	Dash_upvr.forEachArgs(function(arg1_2) -- Line 20
		--[[ Upvalues[2]:
			[1]: any_copy_result1_upvr (readonly)
			[2]: Dash_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
		if arg1_2 == nil then return end
		-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 28. Error Block 24 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [35.8]
		if nil.tag then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		else
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [41.5]
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.9]
		nil.tag = nil.tag
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.4]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.6]
		nil[nil] = nil
		-- KONSTANTERROR: [35] 28. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil.tag and nil.tag then
			-- KONSTANTWARNING: GOTO [43] #33
		end
		-- KONSTANTERROR: [7] 7. Error Block 23 end (CF ANALYSIS FAILED)
	end, ...)
	return any_copy_result1_upvr
end
return composeStyleVariant