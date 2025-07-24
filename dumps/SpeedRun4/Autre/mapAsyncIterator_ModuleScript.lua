-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:35
-- Luau version 6, Types version 3
-- Time taken: 0.002125 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local module_2 = {}
local Boolean_upvr = require(Parent.LuauPolyfill).Boolean
local asyncMapValue_upvw
local iteratorResult_upvw
function module_2.mapAsyncIterator(arg1, arg2, arg3) -- Line 25
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: asyncMapValue_upvw (read and write)
		[4]: iteratorResult_upvw (read and write)
	]]
	local var7_upvw
	local var9_upvw
	if typeof(arg1["return"]) == "function" then
		var7_upvw = arg1["return"]
		function var9_upvw(arg1_2) -- Line 35
			--[[ Upvalues[3]:
				[1]: Promise_upvr (copied, readonly)
				[2]: var7_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			local function rethrow() -- Line 36
				--[[ Upvalues[2]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				return Promise_upvr.reject(arg1_2)
			end
			return var7_upvw(arg1):andThen(rethrow, rethrow)
		end
	end
	local function mapResult_upvr(arg1_3) -- Line 47, Named "mapResult"
		--[[ Upvalues[5]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: asyncMapValue_upvw (copied, read and write)
			[3]: arg2 (readonly)
			[4]: iteratorResult_upvw (copied, read and write)
			[5]: var9_upvw (read and write)
		]]
		if Boolean_upvr.toJSBoolean(arg1_3.done) then
			return arg1_3
		end
		return asyncMapValue_upvw(arg1_3.value, arg2):andThen(iteratorResult_upvw, var9_upvw)
	end
	local var11_upvw
	if arg3 then
		function var11_upvw(arg1_4) -- Line 62
			--[[ Upvalues[4]:
				[1]: asyncMapValue_upvw (copied, read and write)
				[2]: arg3 (readonly)
				[3]: iteratorResult_upvw (copied, read and write)
				[4]: var9_upvw (read and write)
			]]
			return asyncMapValue_upvw(arg1_4, arg3):andThen(iteratorResult_upvw, var9_upvw)
		end
	end
	return {
		next = function(arg1_5) -- Line 70, Named "next"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: mapResult_upvr (readonly)
				[3]: var11_upvw (read and write)
			]]
			return arg1:next():andThen(mapResult_upvr, var11_upvw)
		end;
		["return"] = function(arg1_6) -- Line 76
			--[[ Upvalues[6]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: var7_upvw (read and write)
				[3]: arg1 (readonly)
				[4]: mapResult_upvr (readonly)
				[5]: var11_upvw (read and write)
				[6]: Promise_upvr (copied, readonly)
			]]
			if Boolean_upvr.toJSBoolean(var7_upvw) then
				return var7_upvw(arg1):andThen(mapResult_upvr, var11_upvw)
			end
			return Promise_upvr.resolve({
				value = nil;
				done = true;
			})
		end;
		throw = function(arg1_7, arg2_2) -- Line 88, Named "throw"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: mapResult_upvr (readonly)
				[3]: var11_upvw (read and write)
				[4]: Promise_upvr (copied, readonly)
				[5]: var9_upvw (read and write)
			]]
			if typeof(arg1.throw) == "function" then
				return arg1.throw(arg1, arg2_2):andThen(mapResult_upvr, var11_upvw)
			end
			return Promise_upvr.reject(arg2_2):catch(var9_upvw)
		end;
	}
end
function asyncMapValue_upvw(arg1, arg2) -- Line 108, Named "asyncMapValue"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_8) -- Line 110
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_8(arg2(arg1))
	end)
end
function iteratorResult_upvw(arg1) -- Line 116, Named "iteratorResult"
	local module = {}
	module.value = arg1
	module.done = false
	return module
end
return module_2