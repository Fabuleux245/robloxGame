-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:27
-- Luau version 6, Types version 3
-- Time taken: 0.000561 seconds

local React_upvr = require(script:FindFirstAncestor("GenericAbuseReporting").Parent.React)
return function(arg1, arg2) -- Line 8, Named "useScrollbarOffset"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	React_upvr.useEffect(function() -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if arg2.Y < arg1.Y then
			any_useState_result2_upvr(true)
		else
			any_useState_result2_upvr(false)
		end
	end, tbl)
	if any_useState_result1 then
		return 16
	end
	return 0
end