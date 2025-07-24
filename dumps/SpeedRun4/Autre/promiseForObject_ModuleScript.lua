-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:33
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local Promise_upvr = require(Parent.Promise)
return {
	promiseForObject = function(arg1) -- Line 19, Named "promiseForObject"
		--[[ Upvalues[3]:
			[1]: Object_upvr (readonly)
			[2]: Array_upvr (readonly)
			[3]: Promise_upvr (readonly)
		]]
		local any_keys_result1_upvr = Object_upvr.keys(arg1)
		return Promise_upvr.all(Array_upvr.map(any_keys_result1_upvr, function(arg1_2) -- Line 21
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			local var8 = arg1[arg1_2]
			if Promise_upvr.is(var8) then
				return var8
			end
			return Promise_upvr.resolve(var8)
		end)):andThen(function(arg1_3) -- Line 31
			--[[ Upvalues[2]:
				[1]: Array_upvr (copied, readonly)
				[2]: any_keys_result1_upvr (readonly)
			]]
			return Array_upvr.reduce(arg1_3, function(arg1_4, arg2, arg3) -- Line 32
				--[[ Upvalues[1]:
					[1]: any_keys_result1_upvr (copied, readonly)
				]]
				arg1_4[any_keys_result1_upvr[arg3]] = arg2
				return arg1_4
			end, {})
		end)
	end;
}