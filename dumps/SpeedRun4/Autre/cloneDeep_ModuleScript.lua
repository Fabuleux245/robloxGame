-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.002684 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local cloneDeepHelper_upvw
function module.cloneDeep(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: cloneDeepHelper_upvw (read and write)
	]]
	return cloneDeepHelper_upvw(arg1)
end
local tbl_upvr = {LuauPolyfill.Error, LuauPolyfill.Map, LuauPolyfill.WeakMap, LuauPolyfill.Set}
local Array_upvr = LuauPolyfill.Array
local Map_upvr = LuauPolyfill.Map
local NULL_upvr = require(script.Parent.Parent.globals.null).NULL
local instanceof_upvr = LuauPolyfill.instanceof
local Object_upvr = require(Parent.luaUtils.Object)
function cloneDeepHelper_upvw(arg1, arg2) -- Line 48, Named "cloneDeepHelper"
	--[[ Upvalues[7]:
		[1]: Array_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: cloneDeepHelper_upvw (read and write)
		[4]: NULL_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: instanceof_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	if Array_upvr.isArray(arg1) then
		local var20 = arg2
		if not var20 then
			var20 = Map_upvr.new(nil)
		end
		local var21_upvw = var20
		if var21_upvw:has(arg1) then
			return var21_upvw:get(arg1)
		end
		local any_slice_result1_upvr = Array_upvr.slice(arg1, 1)
		var21_upvw:set(arg1, any_slice_result1_upvr)
		Array_upvr.forEach(any_slice_result1_upvr, function(arg1_5, arg2_3) -- Line 56
			--[[ Upvalues[3]:
				[1]: any_slice_result1_upvr (readonly)
				[2]: cloneDeepHelper_upvw (copied, read and write)
				[3]: var21_upvw (read and write)
			]]
			any_slice_result1_upvr[arg2_3] = cloneDeepHelper_upvw(arg1_5, var21_upvw)
		end)
		return any_slice_result1_upvr
	end
	if typeof(arg1) == "table" and arg1 ~= NULL_upvr then
		if Array_upvr.every(tbl_upvr, function(arg1_6) -- Line 63
			--[[ Upvalues[2]:
				[1]: instanceof_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return not instanceof_upvr(arg1, arg1_6)
		end) then
			local var25 = var21_upvw
			if not var25 then
				var25 = Map_upvr.new(nil)
			end
			local var26_upvw = var25
			if var26_upvw:has(arg1) then
				return var26_upvw:get(arg1)
			end
			local any_create_result1_upvr = Object_upvr.create(Object_upvr.getPrototypeOf(arg1))
			var26_upvw:set(arg1, any_create_result1_upvr)
			Array_upvr.forEach(Object_upvr.keys(arg1), function(arg1_7) -- Line 76
				--[[ Upvalues[4]:
					[1]: any_create_result1_upvr (readonly)
					[2]: cloneDeepHelper_upvw (copied, read and write)
					[3]: arg1 (readonly)
					[4]: var26_upvw (read and write)
				]]
				any_create_result1_upvr[arg1_7] = cloneDeepHelper_upvw(arg1[arg1_7], var26_upvw)
			end)
			return any_create_result1_upvr
		end
	end
	return arg1
end
return module