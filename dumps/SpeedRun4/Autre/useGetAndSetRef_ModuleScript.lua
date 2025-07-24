-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:59
-- Luau version 6, Types version 3
-- Time taken: 0.000620 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
return function(arg1) -- Line 5, Named "useGetAndSetRef"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(arg1)
	return React_upvr.useCallback(function() -- Line 7
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return any_useRef_result1_upvr.current
	end, {}), React_upvr.useCallback(function(arg1_2) -- Line 10
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if typeof(arg1_2) == "function" then
			any_useRef_result1_upvr.current = arg1_2(any_useRef_result1_upvr.current)
		else
			any_useRef_result1_upvr.current = arg1_2
		end
	end, {})
end