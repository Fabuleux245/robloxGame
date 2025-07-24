-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:43
-- Luau version 6, Types version 3
-- Time taken: 0.000527 seconds

return function(arg1, arg2) -- Line 1
	local var3_upvw = false
	return function(...) -- Line 3
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		if var3_upvw then return end
		var3_upvw = true
		task.delay(arg1, function() -- Line 8
			--[[ Upvalues[1]:
				[1]: var3_upvw (copied, read and write)
			]]
			var3_upvw = false
		end)
		return arg2(...)
	end
end