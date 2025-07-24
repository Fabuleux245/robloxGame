-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.001153 seconds

local function tracebackReporter_upvr(arg1) -- Line 9, Named "tracebackReporter"
	return debug.traceback(arg1)
end
return function(arg1) -- Line 13, Named "makeThunkMiddleware"
	--[[ Upvalues[1]:
		[1]: tracebackReporter_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 14, Named "thunkMiddleware"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tracebackReporter_upvr (copied, readonly)
		]]
		return function(arg1_3) -- Line 15
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: tracebackReporter_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
			]]
			if typeof(arg1_3) == "function" then
				local xpcall_result1, xpcall_result2 = xpcall(function() -- Line 17
					--[[ Upvalues[3]:
						[1]: arg1_3 (readonly)
						[2]: arg2 (copied, readonly)
						[3]: arg1 (copied, readonly)
					]]
					return arg1_3(arg2, arg1)
				end, tracebackReporter_upvr)
				if not xpcall_result1 then
					arg2._errorReporter.reportReducerError(arg2:getState(), arg1_3, {
						message = "Caught error in thunk";
						thrownValue = xpcall_result2;
					})
					return nil
				end
				return xpcall_result2
			end
			return arg1_2(arg1_3)
		end
	end
end