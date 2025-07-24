-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:11
-- Luau version 6, Types version 3
-- Time taken: 0.000501 seconds

return function(arg1, arg2) -- Line 1
	local var3_upvw = 0
	return function(...) -- Line 3
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		local args_list_upvr = {...}
		local time_result1_upvr = time()
		var3_upvw = time_result1_upvr
		delay(arg2, function() -- Line 7
			--[[ Upvalues[4]:
				[1]: var3_upvw (copied, read and write)
				[2]: time_result1_upvr (readonly)
				[3]: arg1 (copied, readonly)
				[4]: args_list_upvr (readonly)
			]]
			if var3_upvw == time_result1_upvr then
				arg1(unpack(args_list_upvr))
			end
		end)
	end
end