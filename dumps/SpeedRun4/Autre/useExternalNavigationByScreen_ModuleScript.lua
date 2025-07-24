-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:59
-- Luau version 6, Types version 3
-- Time taken: 0.000896 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React = require(Parent.React)
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
local function externalNavigationByScreenReducer_upvr(arg1, arg2) -- Line 22, Named "externalNavigationByScreenReducer"
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var4
	if arg2.callback == nil then
		var4 = Immutable_upvr
		var4 = arg1
		return var4.RemoveFromDictionary(var4, arg2.screen)
	end
	if arg2.callback == nil then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "")
	var4 = Immutable_upvr
	var4 = arg1
	return var4.Set(var4, arg2.screen, arg2.callback)
end
local useReducer_upvr = React.useReducer
local useCallback_upvr = React.useCallback
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function() -- Line 31
	--[[ Upvalues[4]:
		[1]: useReducer_upvr (readonly)
		[2]: externalNavigationByScreenReducer_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
	]]
	local useReducer_upvr_result1, useReducer_upvr_result2_upvr = useReducer_upvr(externalNavigationByScreenReducer_upvr, {})
	return useReducer_upvr_result1, useCallback_upvr(function(arg1, arg2) -- Line 33
		--[[ Upvalues[1]:
			[1]: useReducer_upvr_result2_upvr (readonly)
		]]
		local tbl = {}
		tbl.callback = arg1
		tbl.screen = arg2
		useReducer_upvr_result2_upvr(tbl)
	end, dependencyArray_upvr(useReducer_upvr_result2_upvr))
end