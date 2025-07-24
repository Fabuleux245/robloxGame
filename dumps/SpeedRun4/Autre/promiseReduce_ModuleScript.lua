-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:34
-- Luau version 6, Types version 3
-- Time taken: 0.000940 seconds

local Parent = script.Parent
local Array_upvr = require(Parent.Parent.Parent.LuauPolyfill).Array
local isPromise_upvr = require(Parent.isPromise).isPromise
return {
	promiseReduce = function(arg1, arg2, arg3) -- Line 26, Named "promiseReduce"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: isPromise_upvr (readonly)
		]]
		return Array_upvr.reduce(arg1, function(arg1_2, arg2_2) -- Line 31
			--[[ Upvalues[2]:
				[1]: isPromise_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if isPromise_upvr(arg1_2) then
				return arg1_2:andThen(function(arg1_3) -- Line 33
					--[[ Upvalues[2]:
						[1]: arg2 (copied, readonly)
						[2]: arg2_2 (readonly)
					]]
					return arg2(arg1_3, arg2_2)
				end)
			end
			return arg2(arg1_2, arg2_2)
		end, arg3)
	end;
}