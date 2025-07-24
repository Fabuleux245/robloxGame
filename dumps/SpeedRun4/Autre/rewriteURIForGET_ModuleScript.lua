-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:32
-- Luau version 6, Types version 3
-- Time taken: 0.002950 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local module = {}
local encodeURIComponent_upvr = require(Parent.luaUtils.encodeURIComponent)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Boolean_upvr = LuauPolyfill.Boolean
local serializeFetchParameter_upvr = require(script.Parent.serializeFetchParameter).serializeFetchParameter
function module.rewriteURIForGET(arg1, arg2) -- Line 29
	--[[ Upvalues[5]:
		[1]: encodeURIComponent_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: serializeFetchParameter_upvr (readonly)
	]]
	local tbl_upvr = {}
	local function _(arg1_2, arg2_2) -- Line 39, Named "addQueryParam"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: encodeURIComponent_upvr (copied, readonly)
		]]
		table.insert(tbl_upvr, "%s=%s":format(arg1_2, encodeURIComponent_upvr(arg2_2)))
	end
	local var10
	if Array_upvr.indexOf(Object_upvr.keys(arg2), "query") ~= -1 then
		var10 = "%s=%s":format("query", encodeURIComponent_upvr(arg2.query))
		table.insert(tbl_upvr, var10)
	end
	if Boolean_upvr.toJSBoolean(arg2.operationName) then
		var10 = "%s=%s":format("operationName", encodeURIComponent_upvr(arg2.operationName))
		table.insert(tbl_upvr, var10)
	end
	if Boolean_upvr.toJSBoolean(arg2.variables) then
		local var11_upvw
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 51
			--[[ Upvalues[3]:
				[1]: var11_upvw (read and write)
				[2]: serializeFetchParameter_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			var11_upvw = serializeFetchParameter_upvr(arg2.variables, "Variables map", true)
		end)
		if not pcall_result1 then
			var10 = {}
			var10.parseError = pcall_result2_2
			return var10
		end
		var10 = var11_upvw
		table.insert(tbl_upvr, "%s=%s":format("variables", encodeURIComponent_upvr(var10)))
	end
	if Boolean_upvr.toJSBoolean(arg2.extensions) then
		local var15_upvw
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 62
			--[[ Upvalues[3]:
				[1]: var15_upvw (read and write)
				[2]: serializeFetchParameter_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			var15_upvw = serializeFetchParameter_upvr(arg2.extensions, "Extensions map")
		end)
		if not pcall_result1_2 then
			var10 = {}
			var10.parseError = pcall_result2
			return var10
		end
		var10 = var15_upvw
		table.insert(tbl_upvr, "%s=%s":format("extensions", encodeURIComponent_upvr(var10)))
	end
	var15_upvw = ""
	local var19 = var15_upvw
	pcall_result1_2 = arg1
	local var20 = pcall_result1_2
	var10 = arg1
	local string_find_result1 = string.find(var10, '#')
	if string_find_result1 ~= nil then
		var10 = string.sub(arg1, string_find_result1)
		var19 = var10
		var10 = string.sub(arg1, 1, string_find_result1 - 1)
		var20 = var10
	end
	if string.find(var20, '?') == nil then
		var10 = '?'
	else
		var10 = '&'
	end
	return {
		newURI = var20..var10..Array_upvr.join(tbl_upvr, '&')..var19;
	}
end
return module