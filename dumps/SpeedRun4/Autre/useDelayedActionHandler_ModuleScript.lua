-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:58
-- Luau version 6, Types version 3
-- Time taken: 0.000961 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2, arg3) -- Line 6, Named "useDelayedActionHandler"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	React_upvr.useEffect(function() -- Line 38
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_2 (readonly)
		]]
		return function() -- Line 39
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_2 (copied, readonly)
			]]
			local current = any_useRef_result1_upvr_2.current
			if current ~= nil then
				task.cancel(current)
			end
		end
	end, {any_useRef_result1_upvr_2})
	return function() -- Line 15, Named "handleAction"
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: arg1 (readonly)
			[5]: arg3 (readonly)
		]]
		if arg2 ~= nil and any_useRef_result1_upvr.current ~= nil and os.clock() - any_useRef_result1_upvr.current < arg2 then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			any_useRef_result1_upvr.current = os.clock()
			local current_2 = any_useRef_result1_upvr_2.current
			if current_2 ~= nil then
				task.cancel(current_2)
			end
			any_useRef_result1_upvr_2.current = task.delay(arg1, function() -- Line 33
				--[[ Upvalues[1]:
					[1]: arg3 (copied, readonly)
				]]
				arg3()
			end)
		end
	end
end