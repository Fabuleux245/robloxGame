-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:41
-- Luau version 6, Types version 3
-- Time taken: 0.000594 seconds

local createSignal_upvr = require(script.Parent.createSignal)
return function(arg1) -- Line 30, Named "createReadableSignal"
	--[[ Upvalues[1]:
		[1]: createSignal_upvr (readonly)
	]]
	local var1_result1_upvr, var1_result2_upvr = createSignal_upvr()
	local var4_upvw = arg1
	return {
		subscribe = function(arg1_2, arg2) -- Line 35, Named "subscribe"
			--[[ Upvalues[1]:
				[1]: var1_result1_upvr (readonly)
			]]
			return var1_result1_upvr:subscribe(arg2)
		end;
		getValue = function(arg1_3) -- Line 39, Named "getValue"
			--[[ Upvalues[1]:
				[1]: var4_upvw (read and write)
			]]
			return var4_upvw
		end;
	}, function(arg1_4) -- Line 43, Named "fire"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: var1_result2_upvr (readonly)
		]]
		var4_upvw = arg1_4
		var1_result2_upvr(arg1_4)
	end
end