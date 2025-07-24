-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:24
-- Luau version 6, Types version 3
-- Time taken: 0.006660 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_2 = {}
local getArgumentValues_upvr = require(script.Parent.getArgumentValues).getArgumentValues
local function getDirectivesInExtensions_upvr(arg1, arg2) -- Line 95, Named "getDirectivesInExtensions"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
		({})[1] = "directives"
	end
	local var10
	if typeof(arg1) == "table" and arg1.extensions then
		var10 = arg1.extensions
	else
		var10 = Object_upvr.None
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Array_upvr.reduce({}, function(arg1_2, arg2_2) -- Line 104
		--[[ Upvalues[1]:
			[1]: Object_upvr (copied, readonly)
		]]
		if arg1_2 == Object_upvr.None or arg1_2 == nil then
			return nil
		end
		return arg1_2[arg2_2]
	end, var10)
end
module_2.getDirectivesInExtensions = getDirectivesInExtensions_upvr
local function _getDirectiveInExtensions_upvr(arg1, arg2) -- Line 121, Named "_getDirectiveInExtensions"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local any_filter_result1 = Array_upvr.filter(arg1, function(arg1_3) -- Line 125
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var12
		if arg1_3.name ~= arg2 then
			var12 = false
		else
			var12 = true
		end
		return var12
	end)
	if #any_filter_result1 == 0 then
		return nil
	end
	return Array_upvr.map(any_filter_result1, function(arg1_4) -- Line 134
		if arg1_4.args ~= nil then
			return arg1_4.args
		end
		return {}
	end)
end
local function getDirectiveInExtensions_upvr(arg1, arg2, arg3) -- Line 141, Named "getDirectiveInExtensions"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: _getDirectiveInExtensions_upvr (readonly)
	]]
	if arg3 ~= nil then
		local _ = arg3
	else
		({})[1] = "directives"
	end
	local var25
	if typeof(arg1) == "table" and arg1.extensions then
		var25 = arg1.extensions
	else
		var25 = Object_upvr.None
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_reduce_result1 = Array_upvr.reduce({}, function(arg1_5, arg2_3) -- Line 151
		--[[ Upvalues[1]:
			[1]: Object_upvr (copied, readonly)
		]]
		if arg1_5 == Object_upvr.None or arg1_5 == nil then
			return nil
		end
		return arg1_5[arg2_3]
	end, var25)
	if any_reduce_result1 == nil then
		return nil
	end
	var25 = Array_upvr
	var25 = any_reduce_result1
	if Boolean_upvr.toJSBoolean(var25.isArray(var25)) then
		var25 = arg2
		return _getDirectiveInExtensions_upvr(any_reduce_result1, var25)
	end
	var25 = Object_upvr
	var25 = any_reduce_result1
	local any_entries_result1, any_entries_result2, any_entries_result3 = var25.entries(var25)
	for _, v in any_entries_result1, any_entries_result2, any_entries_result3 do
		local unpacked_value_1, unpacked_value_2 = table.unpack(v, 1, 2)
		if Boolean_upvr.toJSBoolean(Array_upvr.isArray(unpacked_value_2)) then
			for _, v_2 in unpacked_value_2 do
				table.insert({}, {
					name = unpacked_value_1;
					args = v_2;
				})
				local var33
			end
		else
			table.insert(var33, {
				name = unpacked_value_1;
				args = unpacked_value_2;
			})
		end
	end
	any_entries_result2 = var33
	return _getDirectiveInExtensions_upvr(any_entries_result2, arg2)
end
module_2.getDirectiveInExtensions = getDirectiveInExtensions_upvr
function module_2.getDirectives(arg1, arg2, arg3) -- Line 214
	--[[ Upvalues[5]:
		[1]: getDirectivesInExtensions_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: getArgumentValues_upvr (readonly)
	]]
	if arg3 ~= nil then
		local _ = arg3
	else
		({})[1] = "directives"
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local getDirectivesInExtensions_result1 = getDirectivesInExtensions_upvr(arg2, {})
	if getDirectivesInExtensions_result1 ~= nil then
		if 0 < #getDirectivesInExtensions_result1 then
			return getDirectivesInExtensions_result1
		end
	end
	local var61 = Boolean_upvr
	if Boolean_upvr.toJSBoolean(arg1) then
		var61 = arg1.getDirectives
	else
		var61 = arg1
	end
	if var61.toJSBoolean(var61) then
	else
	end
	if Boolean_upvr.toJSBoolean(arg2.astNode) then
		table.insert({}, arg2.astNode)
	end
	local var63
	if Array_upvr.indexOf(Object_upvr.keys(arg2), "extensionASTNodes") ~= -1 and Boolean_upvr.toJSBoolean(arg2.extensionASTNodes) then
		var63 = Array_upvr.concat({}, var63, arg2.extensionASTNodes)
	end
	for _, v_3 in var63 do
		if Boolean_upvr.toJSBoolean(v_3.directives) then
			for _, v_4 in v_3.directives do
				local var64 = Array_upvr.reduce({}, function(arg1_7, arg2_5) -- Line 237
					arg1_7[tostring(arg2_5.name)] = arg2_5
					return arg1_7
				end, {})[tostring(v_4.name.value)]
				if Boolean_upvr.toJSBoolean(var64) then
					table.insert({}, {
						name = v_4.name.value;
						args = getArgumentValues_upvr(var64, v_4);
					})
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_2.getDirective(arg1, arg2, arg3, arg4) -- Line 278
	--[[ Upvalues[5]:
		[1]: getDirectiveInExtensions_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: getArgumentValues_upvr (readonly)
	]]
	if arg4 ~= nil then
		local _ = arg4
	else
		({})[1] = "directives"
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local getDirectiveInExtensions_upvr_result1 = getDirectiveInExtensions_upvr(arg2, arg3, {})
	if getDirectiveInExtensions_upvr_result1 ~= nil then
		return getDirectiveInExtensions_upvr_result1
	end
	local var76 = Boolean_upvr
	if Boolean_upvr.toJSBoolean(arg1) then
		var76 = arg1.getDirective
	else
		var76 = arg1
	end
	if var76.toJSBoolean(var76) then
		local _ = arg1:getDirective(arg3)
	else
	end
	if nil == nil then
		return nil
	end
	if Boolean_upvr.toJSBoolean(arg2.astNode) then
		table.insert({}, arg2.astNode)
	end
	local var78
	if Array_upvr.indexOf(Object_upvr.keys(arg2), "extensionASTNodes") ~= -1 and Boolean_upvr.toJSBoolean(arg2.extensionASTNodes) then
		var78 = Array_upvr.concat({}, var78, arg2.extensionASTNodes)
	end
	local module = {}
	for _, v_5 in var78 do
		if Boolean_upvr.toJSBoolean(v_5.directives) then
			for _, v_6 in v_5.directives do
				if v_6.name.value == arg3 then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert(module, getArgumentValues_upvr(nil, v_6))
				end
			end
		end
	end
	if not Boolean_upvr.toJSBoolean(#module) then
		return nil
	end
	return module
end
return module_2