-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.000708 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2) -- Line 29, Named "useForwardRef"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local module = {}
	module[1] = arg2
	React_upvr.useImperativeHandle(arg1, function() -- Line 44
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_2 (readonly)
		]]
		return any_useRef_result1_upvr_2.current
	end)
	return React_upvr.useCallback(function(arg1_2) -- Line 33
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg2 (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current()
			any_useRef_result1_upvr.current = nil
		end
		if arg1_2 then
			any_useRef_result1_upvr_2.current = arg1_2
			any_useRef_result1_upvr.current = arg2(arg1_2)
		end
	end, module)
end