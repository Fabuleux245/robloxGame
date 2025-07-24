-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:40
-- Luau version 6, Types version 3
-- Time taken: 0.000501 seconds

local createSignal_upvr = require(script:FindFirstAncestor("ExpChat").Parent.Signals).createSignal
return function() -- Line 15
	--[[ Upvalues[1]:
		[1]: createSignal_upvr (readonly)
	]]
	local var2_result1, var2_result2_upvr = createSignal_upvr(false)
	return {
		getChatInputBarFocused = var2_result1;
		focusChatInputBar = function() -- Line 18, Named "focusChatInputBar"
			--[[ Upvalues[1]:
				[1]: var2_result2_upvr (readonly)
			]]
			var2_result2_upvr(true)
		end;
		unfocusChatInputBar = function() -- Line 21, Named "unfocusChatInputBar"
			--[[ Upvalues[1]:
				[1]: var2_result2_upvr (readonly)
			]]
			var2_result2_upvr(false)
		end;
	}
end