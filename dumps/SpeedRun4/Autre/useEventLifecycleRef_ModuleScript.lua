-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:43
-- Luau version 6, Types version 3
-- Time taken: 0.000839 seconds

local React_upvr = require(script.Parent.Parent.React)
return function(arg1, arg2) -- Line 8, Named "useEventLifecycleRef"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local module = {}
	module[1] = arg1
	module[2] = arg2
	return React_upvr.useCallback(function(arg1_2) -- Line 10
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		if any_useRef_result1_upvr.current and arg2 then
			arg2(any_useRef_result1_upvr.current)
		end
		if arg1_2 then
			arg1(arg1_2)
		end
		any_useRef_result1_upvr.current = arg1_2
	end, module)
end