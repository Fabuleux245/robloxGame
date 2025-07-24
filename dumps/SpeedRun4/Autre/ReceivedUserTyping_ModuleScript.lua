-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:52
-- Luau version 6, Types version 3
-- Time taken: 0.000850 seconds

local var2_upvw = 0
local SetUserTyping_upvr = require(script.Parent.SetUserTyping)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: SetUserTyping_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[4]:
			[1]: var2_upvw (copied, read and write)
			[2]: SetUserTyping_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		spawn(function() -- Line 9
			--[[ Upvalues[5]:
				[1]: var2_upvw (copied, read and write)
				[2]: arg1_2 (readonly)
				[3]: SetUserTyping_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			var2_upvw += 1
			arg1_2:dispatch(SetUserTyping_upvr(arg1, arg2, true))
			wait(8)
			if var2_upvw == var2_upvw then
				arg1_2:dispatch(SetUserTyping_upvr(arg1, arg2, false))
			end
		end)
	end
end