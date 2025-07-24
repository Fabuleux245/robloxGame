-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.004187 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_2 = {}
local LuauRegExp = require(Parent.LuauRegExp)
function module_2.asArray(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
		return arg1
	end
	if Boolean_upvr.toJSBoolean(arg1) then
		local module = {}
		module[1] = arg1
		return module
	end
	return {}
end
local LuauRegExp_result1_upvr = LuauRegExp("\\.[a-zA-Z0-9]+$")
local parse_upvr = require(Parent.GraphQL).parse
function module_2.isDocumentString(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: LuauRegExp_result1_upvr (readonly)
		[3]: parse_upvr (readonly)
	]]
	if typeof(arg1) ~= "string" then
		return false
	end
	if Boolean_upvr.toJSBoolean(LuauRegExp_result1_upvr:test(arg1)) then
		return false
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: parse_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		parse_upvr(arg1)
		return true
	end)
	if not pcall_result1 then
		return false
	end
	return pcall_result2
end
local LuauRegExp_result1_upvr_2 = LuauRegExp("[‘“!%^<=>`]")
function module_2.isValidPath(arg1) -- Line 68
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: LuauRegExp_result1_upvr_2 (readonly)
	]]
	local var15 = false
	if typeof(arg1) == "string" then
		var15 = not Boolean_upvr.toJSBoolean(LuauRegExp_result1_upvr_2:test(arg1))
	end
	return var15
end
function module_2.compareStrings(arg1, arg2) -- Line 72
	if tostring(arg1) < tostring(arg2) then
		return -1
	end
	if tostring(arg2) < tostring(arg1) then
		return 1
	end
	return 0
end
local function nodeToString_upvr(arg1) -- Line 96, Named "nodeToString"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local var16
	if Array_upvr.indexOf(Object_upvr.keys(arg1), "alias") ~= -1 then
		if typeof(arg1.alias) == "table" then
			var16 = arg1.alias.value
		else
			var16 = nil
		end
	end
	if var16 == nil and Array_upvr.indexOf(Object_upvr.keys(arg1), "name") ~= -1 then
		if typeof(arg1.name) == "table" then
			var16 = arg1.name.value
		else
			var16 = nil
		end
	end
	if var16 == nil then
		var16 = arg1.kind
	end
	return var16
end
module_2.nodeToString = nodeToString_upvr
function module_2.compareNodes(arg1, arg2, arg3) -- Line 122
	--[[ Upvalues[1]:
		[1]: nodeToString_upvr (readonly)
	]]
	local nodeToString_upvr_result1_2 = nodeToString_upvr(arg1)
	local nodeToString_upvr_result1 = nodeToString_upvr(arg2)
	if typeof(arg3) == "function" then
		return arg3(nodeToString_upvr_result1_2, nodeToString_upvr_result1)
	end
	if tostring(nodeToString_upvr_result1_2) < tostring(nodeToString_upvr_result1) then
		return -1
	end
	if tostring(nodeToString_upvr_result1) < tostring(nodeToString_upvr_result1_2) then
		return 1
	end
	return 0
end
function module_2.isSome(arg1) -- Line 131
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local var19 = false
	if arg1 ~= nil then
		if arg1 == Object_upvr.None then
			var19 = false
		else
			var19 = true
		end
	end
	return var19
end
local Error_upvr = LuauPolyfill.Error
function module_2.assertSome(arg1, arg2) -- Line 140
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	if arg1 == nil then
		error(Error_upvr.new("Value should be something"))
	end
	return true
end
return module_2