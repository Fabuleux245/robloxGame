-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:13
-- Luau version 6, Types version 3
-- Time taken: 0.003482 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Boolean_upvr = LuauPolyfill.Boolean
local Array_upvr = LuauPolyfill.Array
local Map_upvr = LuauPolyfill.Map
local mergeDirectives_upvr = require(script.Parent.directives).mergeDirectives
local compareNodes_upvr = require(Parent.Utils).compareNodes
function module.mergeEnumValues(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Map_upvr (readonly)
		[4]: mergeDirectives_upvr (readonly)
		[5]: compareNodes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25 = Boolean_upvr
	local var26
	if typeof(arg3) == "table" then
		var25 = arg3.consistentEnumMerge
	else
		var25 = nil
	end
	if var25.toJSBoolean(var25) then
		local tbl = {}
		if Boolean_upvr.toJSBoolean(var26) then
			tbl = Array_upvr.concat(tbl, var26)
		end
		var26 = arg2
		local var28 = tbl
	end
	if var26 then
		for _, v in var26 do
			Map_upvr.new():set(v.name.value, v)
			local var30
		end
	end
	if var28 then
		for _, v_2 in var28 do
			local value = v_2.name.value
			local var32
			if Boolean_upvr.toJSBoolean(var30:has(value)) then
				local any_get_result1 = var30:get(value)
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var32 = v_2.description
					return var32
				end
				if not Boolean_upvr.toJSBoolean(v_2.description) or not INLINED() then
					var32 = any_get_result1.description
				end
				any_get_result1.description = var32
				var32 = mergeDirectives_upvr(v_2.directives, any_get_result1.directives)
				any_get_result1.directives = var32
			else
				var30:set(value, v_2)
			end
		end
	end
	local any_concat_result1 = Array_upvr.concat({}, var30:values())
	if arg3 and Boolean_upvr.toJSBoolean(arg3.sort) then
		Array_upvr.sort(any_concat_result1, compareNodes_upvr)
	end
	return any_concat_result1
end
return module