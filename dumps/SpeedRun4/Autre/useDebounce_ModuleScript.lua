-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:57
-- Luau version 6, Types version 3
-- Time taken: 0.001104 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2) -- Line 7, Named "useDebounce"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	React_upvr.useLayoutEffect(function() -- Line 10
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		if arg2 == nil or arg2 == 0 then
			any_useState_result2_upvr(arg1)
			return
		end
		local task_delay_result1_upvr = task.delay(arg2, function() -- Line 11, Named "updateValue"
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			any_useState_result2_upvr(arg1)
		end)
		return function() -- Line 22
			--[[ Upvalues[1]:
				[1]: task_delay_result1_upvr (readonly)
			]]
			task.cancel(task_delay_result1_upvr)
		end
	end, tbl)
	return any_useState_result1
end