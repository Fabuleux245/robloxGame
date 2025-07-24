-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:38
-- Luau version 6, Types version 3
-- Time taken: 0.001582 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_2 = {}
local String_upvr = LuauPolyfill.String
local json_upvr = require(script.Parent.json)
local function _(arg1) -- Line 26, Named "stripBOM"
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	arg1 = tostring(arg1)
	local var6 = arg1
	if String_upvr.charCodeAt(var6, 1) == 65279 then
		var6 = String_upvr.slice(var6, 2)
	end
	return var6
end
local function _(arg1) -- Line 41, Named "parseBOM"
	--[[ Upvalues[2]:
		[1]: json_upvr (readonly)
		[2]: String_upvr (readonly)
	]]
	local tostring_result1 = tostring(arg1)
	if String_upvr.charCodeAt(tostring_result1, 1) == 65279 then
		tostring_result1 = String_upvr.slice(tostring_result1, 2)
	end
	return json_upvr.parse(tostring_result1)
end
local Boolean_upvr = LuauPolyfill.Boolean
local buildClientSchema_upvr = require(Parent.GraphQL).buildClientSchema
local Error_upvr = LuauPolyfill.Error
function module_2.parseGraphQLJSON(arg1, arg2, arg3) -- Line 44
	--[[ Upvalues[5]:
		[1]: json_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: buildClientSchema_upvr (readonly)
		[5]: Error_upvr (readonly)
	]]
	local tostring_result1_2 = tostring(arg2)
	local var12
	if String_upvr.charCodeAt(tostring_result1_2, 1) == 65279 then
		tostring_result1_2 = String_upvr.slice(tostring_result1_2, 2)
	end
	var12 = var12(tostring_result1_2)
	if Boolean_upvr.toJSBoolean(var12.data) then
		var12 = var12.data
	end
	if var12.kind == "Document" then
		local module = {}
		module.location = arg1
		module.document = var12
		return module
	end
	if Boolean_upvr.toJSBoolean(var12.__schema) then
		local module_3 = {}
		module_3.location = arg1
		module_3.schema = buildClientSchema_upvr(var12, arg3)
		return module_3
	end
	if typeof(var12) == "string" then
		local module_4 = {}
		module_4.location = arg1
		module_4.rawSDL = var12
		return module_4
	end
	error(Error_upvr.new("Not valid JSON content"))
end
return module_2