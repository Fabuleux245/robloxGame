-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:54
-- Luau version 6, Types version 3
-- Time taken: 0.000643 seconds

local Parent = script.Parent.Parent.Parent.Parent
local WeakMap_upvr = require(Parent.LuauPolyfill).WeakMap
local any_new_result1_upvw = WeakMap_upvr.new()
local React_upvr = require(Parent.React)
return {
	getApolloContext = function() -- Line 33, Named "getApolloContext"
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvw (read and write)
			[2]: React_upvr (readonly)
		]]
		if any_new_result1_upvw:get(React_upvr.createContext) == nil then
			local any_createContext_result1 = React_upvr.createContext({})
			any_createContext_result1.displayName = "ApolloContext"
			any_new_result1_upvw:set(React_upvr.createContext, any_createContext_result1)
		end
		return any_createContext_result1
	end;
	resetApolloContext = function() -- Line 45, Named "resetApolloContext"
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvw (read and write)
			[2]: WeakMap_upvr (readonly)
		]]
		any_new_result1_upvw = WeakMap_upvr.new()
	end;
}