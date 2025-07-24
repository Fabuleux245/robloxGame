-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:23
-- Luau version 6, Types version 3
-- Time taken: 0.001024 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
function getOrSet(arg1, arg2, arg3, ...) -- Line 7
	local var2 = arg1[arg2]
	if not var2 then
		var2 = arg3(...)
		arg1[arg2] = var2
	end
	return var2
end
function useVariantsState() -- Line 22
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef({})
	return React_upvr.useCallback(function(arg1, arg2, arg3) -- Line 26
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
		]]
		if any_useRef_result1_upvr.current ~= arg3 then
			table.clear(any_useRef_result1_upvr_2.current)
			any_useRef_result1_upvr.current = arg3
		end
		return getOrSet(any_useRef_result1_upvr_2.current, arg1, arg2, arg3)
	end, {})
end
local any_createContext_result1_upvr = React_upvr.createContext(nil)
function useVariants(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: any_createContext_result1_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
	if any_useContext_result1 == nil then
		error("VariantsContext hasn't been instantiated")
	end
	return any_useContext_result1(arg1, arg2, arg3)
end
return {
	useVariants = useVariants;
	useVariantsState = useVariantsState;
	Provider = any_createContext_result1_upvr.Provider;
}