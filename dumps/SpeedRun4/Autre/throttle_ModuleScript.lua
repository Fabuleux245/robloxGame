-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:08
-- Luau version 6, Types version 3
-- Time taken: 0.000756 seconds

return function(arg1, arg2) -- Line 1
	local var3_upvw = false
	local var4_upvr = arg2 or 1
	return function(...) -- Line 4
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var4_upvr (readonly)
		]]
		if var3_upvw then
		else
			var3_upvw = true
			arg1(...)
			task.delay(var4_upvr, function() -- Line 10
				--[[ Upvalues[1]:
					[1]: var3_upvw (copied, read and write)
				]]
				var3_upvw = false
			end)
		end
	end
end