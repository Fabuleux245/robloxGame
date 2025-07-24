-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:55
-- Luau version 6, Types version 3
-- Time taken: 0.000799 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function() -- Line 7, Named "useClock"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	React_upvr.useEffect(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: any_useBinding_result2_upvr (readonly)
			[2]: any_useBinding_result1_upvr (readonly)
		]]
		local task_spawn_result1_upvr = task.spawn(function() -- Line 11
			--[[ Upvalues[2]:
				[1]: any_useBinding_result2_upvr (copied, readonly)
				[2]: any_useBinding_result1_upvr (copied, readonly)
			]]
			while true do
				any_useBinding_result2_upvr(any_useBinding_result1_upvr:getValue() + task.wait())
			end
		end)
		return function() -- Line 18
			--[[ Upvalues[1]:
				[1]: task_spawn_result1_upvr (readonly)
			]]
			task.cancel(task_spawn_result1_upvr)
		end
	end, {})
	return any_useBinding_result1_upvr
end