-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:55
-- Luau version 6, Types version 3
-- Time taken: 0.000861 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2) -- Line 17, Named "useAsync"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({
		status = "loading";
	})
	React_upvr.useEffect(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useState_result2_upvr({
			status = "loading";
		})
		local task_spawn_result1_upvr = task.spawn(function() -- Line 27
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			xpcall(function() -- Line 28
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				any_useState_result2_upvr({
					status = "ok";
					value = arg1();
				})
			end, function(arg1_2) -- Line 33
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				local tbl = {
					status = "error";
				}
				tbl.problem = arg1_2
				any_useState_result2_upvr(tbl)
			end)
		end)
		return function() -- Line 41
			--[[ Upvalues[1]:
				[1]: task_spawn_result1_upvr (readonly)
			]]
			task.cancel(task_spawn_result1_upvr)
		end
	end, arg2)
	return any_useState_result1
end