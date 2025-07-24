-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:04
-- Luau version 6, Types version 3
-- Time taken: 0.001026 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2) -- Line 14, Named "useRefs"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local any_useRef_result1 = React_upvr.useRef(arg1)
	if #any_useRef_result1_upvr.current < arg1 then
		for i = 1, arg1 - #any_useRef_result1_upvr.current do
			local any_createRef_result1 = React_upvr.createRef()
			any_createRef_result1.current = arg2
			table.insert(any_useRef_result1_upvr.current, any_createRef_result1)
		end
	elseif arg1 < any_useRef_result1.current then
		i = arg1 + 1
		for i_2 = i, any_useRef_result1.current do
			any_useRef_result1_upvr.current[i_2].current = arg2
		end
	end
	any_useRef_result1.current = arg1
	local module = {}
	module[1] = arg1
	return React_upvr.useMemo(function() -- Line 33
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		return table.move(any_useRef_result1_upvr.current, 1, arg1, 1, {})
	end, module)
end