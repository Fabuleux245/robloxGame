-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:22
-- Luau version 6, Types version 3
-- Time taken: 0.001401 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
return function() -- Line 5, Named "useTagsState"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({})
	return any_useState_result1, React_upvr.useCallback(function(...) -- Line 8
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		local tbl_upvr = {}
		for _, v in {...} do
			for _, v_2 in string.split(v, ' '), nil do
				table.insert(tbl_upvr, v_2)
			end
		end
		any_useState_result2_upvr(function(arg1) -- Line 19
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 10. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 10. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 6. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [10.7]
			-- KONSTANTERROR: [5] 6. Error Block 2 end (CF ANALYSIS FAILED)
		end)
	end, {any_useState_result2_upvr})
end