-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:47
-- Luau version 6, Types version 3
-- Time taken: 0.002140 seconds

local Promise_upvr = require(nil.Promise)
local module_2 = {}
local function defaultAsyncIteratorReturn_upvr(arg1) -- Line 14, Named "defaultAsyncIteratorReturn"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve():andThen(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module = {}
		module.value = arg1
		module.done = true
		return module
	end)
end
local any_memoize2_result1_upvr = require(script.Parent["memoize.js"]).memoize2(function(arg1, arg2) -- Line 19
	return function(...) -- Line 20
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return Reflect:apply(arg2, arg1, {...})
	end
end)
local Boolean_upvr = require(nil.LuauPolyfill).Boolean
local function getAsyncIteratorWithCancel_upvr(arg1, arg2) -- Line 29, Named "getAsyncIteratorWithCancel"
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: defaultAsyncIteratorReturn_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: any_memoize2_result1_upvr (readonly)
	]]
	local module_3 = {
		has = function(arg1_2, arg2_2, arg3) -- Line 35, Named "has"
			if arg3 == "return" then
				return true
			end
			return Reflect:has(arg2_2, arg3)
		end;
	}
	local function get(arg1_3, arg2_3, arg3, arg4) -- Line 41
		--[[ Upvalues[5]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: defaultAsyncIteratorReturn_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: any_memoize2_result1_upvr (copied, readonly)
		]]
		local Reflect_get_result1 = Reflect:get(arg2_3, arg3, arg4)
		local var12_upvr
		if arg3 == "return" then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var12_upvr = Reflect_get_result1
				return var12_upvr
			end
			if not Boolean_upvr.toJSBoolean(Reflect_get_result1) or not INLINED() then
				var12_upvr = defaultAsyncIteratorReturn_upvr
			end
			return function(arg1_4) -- Line 46
				--[[ Upvalues[4]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: var12_upvr (readonly)
					[4]: arg2_3 (readonly)
				]]
				return Promise_upvr.resolve():andThen(function() -- Line 47
					--[[ Upvalues[4]:
						[1]: arg2 (copied, readonly)
						[2]: arg1_4 (readonly)
						[3]: var12_upvr (copied, readonly)
						[4]: arg2_3 (copied, readonly)
					]]
					return Reflect:apply(var12_upvr, arg2_3, {arg2(arg1_4):expect()})
				end)
			end
		end
		if typeof(Reflect_get_result1) == "function" then
			return any_memoize2_result1_upvr(arg2_3, Reflect_get_result1)
		end
		return Reflect_get_result1
	end
	module_3.get = get
	return Proxy.new(arg1, module_3)
end
module_2.getAsyncIteratorWithCancel = getAsyncIteratorWithCancel_upvr
local function getAsyncIterableWithCancel(arg1, arg2) -- Line 62
	--[[ Upvalues[2]:
		[1]: getAsyncIteratorWithCancel_upvr (readonly)
		[2]: any_memoize2_result1_upvr (readonly)
	]]
	return Proxy.new(arg1, {
		get = function(arg1_5, arg2_4, arg3, arg4) -- Line 68, Named "get"
			--[[ Upvalues[3]:
				[1]: getAsyncIteratorWithCancel_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_memoize2_result1_upvr (copied, readonly)
			]]
			local Reflect_get_result1_upvr = Reflect:get(arg2_4, arg3, arg4)
			if Symbol.asyncIterator == arg3 then
				return function() -- Line 71
					--[[ Upvalues[4]:
						[1]: Reflect_get_result1_upvr (readonly)
						[2]: arg2_4 (readonly)
						[3]: getAsyncIteratorWithCancel_upvr (copied, readonly)
						[4]: arg2 (copied, readonly)
					]]
					return getAsyncIteratorWithCancel_upvr(Reflect:apply(Reflect_get_result1_upvr, arg2_4, {}), arg2)
				end
			end
			if typeof(Reflect_get_result1_upvr) == "function" then
				return any_memoize2_result1_upvr(arg2_4, Reflect_get_result1_upvr)
			end
			return Reflect_get_result1_upvr
		end;
	})
end
module_2.getAsyncIterableWithCancel = getAsyncIterableWithCancel
module_2.withCancel = getAsyncIterableWithCancel
return module_2