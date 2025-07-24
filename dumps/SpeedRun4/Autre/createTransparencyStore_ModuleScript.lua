-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:41
-- Luau version 6, Types version 3
-- Time taken: 0.000860 seconds

local createSignal_upvr = require(script:FindFirstAncestor("ExpChat").Parent.Signals).createSignal
return function() -- Line 20
	--[[ Upvalues[1]:
		[1]: createSignal_upvr (readonly)
	]]
	local var2_result1, var2_result2_upvr_2 = createSignal_upvr(0)
	local createSignal_upvr_result1, var2_result2_upvr_3 = createSignal_upvr(0)
	local var2_result1_2, var2_result2_upvr = createSignal_upvr(false)
	return {
		getLastActivity = var2_result1;
		getLastMessageActivity = createSignal_upvr_result1;
		getIsTextBoxFocused = var2_result1_2;
		resetAllTransparency = function() -- Line 25, Named "resetAllTransparency"
			--[[ Upvalues[2]:
				[1]: var2_result2_upvr_2 (readonly)
				[2]: var2_result2_upvr_3 (readonly)
			]]
			var2_result2_upvr_2(os.clock())
			var2_result2_upvr_3(os.clock())
		end;
		resetTextTransparency = function() -- Line 38, Named "resetTextTransparency"
			--[[ Upvalues[1]:
				[1]: var2_result2_upvr_3 (readonly)
			]]
			var2_result2_upvr_3(os.clock())
		end;
		setTextboxFocus = function() -- Line 41, Named "setTextboxFocus"
			--[[ Upvalues[3]:
				[1]: var2_result2_upvr (readonly)
				[2]: var2_result2_upvr_2 (readonly)
				[3]: var2_result2_upvr_3 (readonly)
			]]
			var2_result2_upvr(true)
			var2_result2_upvr_2(os.clock())
			var2_result2_upvr_3(os.clock())
		end;
		clearTextboxFocus = function() -- Line 45, Named "clearTextboxFocus"
			--[[ Upvalues[3]:
				[1]: var2_result2_upvr (readonly)
				[2]: var2_result2_upvr_2 (readonly)
				[3]: var2_result2_upvr_3 (readonly)
			]]
			var2_result2_upvr(false)
			var2_result2_upvr_2(os.clock())
			var2_result2_upvr_3(os.clock())
		end;
	}
end