-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:06
-- Luau version 6, Types version 3
-- Time taken: 0.002059 seconds

local ReactUtils = script:FindFirstAncestor("ReactUtils")
local React_upvr = require(ReactUtils.Parent.React)
local LUAU_ANALYZE_ERROR_upvr = ReactUtils.LUAU_ANALYZE_ERROR
return function(arg1) -- Line 9, Named "useStackState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LUAU_ANALYZE_ERROR_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4 = arg1
	if not var4 then
		var4 = {}
	end
	local any_useRef_result1_upvr = React_upvr.useRef(var4)
	if any_useRef_result1_upvr.current == nil then
	else
	end
	assert(true, LUAU_ANALYZE_ERROR_upvr)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(#any_useRef_result1_upvr.current)
	return {
		push = React_upvr.useCallback(function(arg1_2) -- Line 21
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			table.insert(any_useRef_result1_upvr.current, arg1_2)
			any_useState_result2_upvr(#any_useRef_result1_upvr.current)
		end, {});
		pop = React_upvr.useCallback(function() -- Line 26
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(#any_useRef_result1_upvr.current)
			return table.remove(any_useRef_result1_upvr.current)
		end, {});
		getTop = React_upvr.useCallback(function() -- Line 32
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (readonly)
			]]
			return any_useRef_result1_upvr.current[#any_useRef_result1_upvr.current]
		end, {});
		clear = React_upvr.useCallback(function() -- Line 36
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			table.clear(any_useRef_result1_upvr.current)
			any_useState_result2_upvr(0)
		end, {});
		size = any_useState_result1;
	}
end