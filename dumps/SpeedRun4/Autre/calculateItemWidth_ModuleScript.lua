-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:34
-- Luau version 6, Types version 3
-- Time taken: 0.001070 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.ArgCheck)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 8, Named "calculateItemWidth"
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if arg1 <= 0 then
		return 0
	end
	local var2 = ArgCheck_upvr
	if 1 > arg1 then
		var2 = false
	else
		var2 = true
	end
	var2.assert(var2)
	if 0 > arg5 then
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 30 start (CF ANALYSIS FAILED)
	ArgCheck_upvr.assert(true)
	if arg5 == 0 then
		-- KONSTANTWARNING: GOTO [29] #24
	end
	-- KONSTANTERROR: [21] 17. Error Block 30 end (CF ANALYSIS FAILED)
end