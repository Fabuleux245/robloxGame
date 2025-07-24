-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:32
-- Luau version 6, Types version 3
-- Time taken: 0.000709 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseImprovedLazyComponent", false)
local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
return function(arg1) -- Line 17, Named "createLazyComponent"
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		local any_memo_result1_upvr = React_upvr.memo(function(arg1_2) -- Line 19
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return React_upvr.createElement(React_upvr.useMemo(arg1, {}), arg1_2)
		end)
		return function(arg1_3) -- Line 23
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: any_memo_result1_upvr (readonly)
			]]
			return React_upvr.createElement(any_memo_result1_upvr, arg1_3)
		end
	end
	function any_memo_result1_upvr(arg1_4) -- Line 27
		--[[ Upvalues[2]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return React_upvr.createElement(arg1(), arg1_4)
	end
	return any_memo_result1_upvr
end