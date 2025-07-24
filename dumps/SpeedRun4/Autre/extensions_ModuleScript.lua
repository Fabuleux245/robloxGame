-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:10
-- Luau version 6, Types version 3
-- Time taken: 0.003806 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local mergeDeep_upvr = require(Parent.Utils).mergeDeep
module.extractExtensionsFromSchema = require(Parent.Utils).extractExtensionsFromSchema
function module.mergeExtensions(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: mergeDeep_upvr (readonly)
	]]
	return mergeDeep_upvr(arg1)
end
local function applyExtensionObject_upvr(arg1, arg2) -- Line 48, Named "applyExtensionObject"
	--[[ Upvalues[2]:
		[1]: mergeDeep_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	if not arg1 then
	else
		local tbl = {}
		if not Boolean_upvr.toJSBoolean(arg1.extensions) or not arg1.extensions then
		end
		if not Boolean_upvr.toJSBoolean(arg2) or not arg2 then
		end
		tbl[1] = {}
		tbl[2] = {}
		arg1.extensions = mergeDeep_upvr(tbl)
	end
end
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
function module.applyExtensions(arg1, arg2) -- Line 69
	--[[ Upvalues[4]:
		[1]: applyExtensionObject_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Array_upvr (readonly)
	]]
	applyExtensionObject_upvr(arg1, arg2.schemaExtensions)
	local var29
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var29 = arg2.types
		return var29
	end
	if not Boolean_upvr.toJSBoolean(arg2.types) or not INLINED() then
		var29 = {}
	end
	for _, v in Object_upvr.entries(var29) do
		local _2 = v[2]
		local any_getType_result1 = arg1:getType(v[1])
		if Boolean_upvr.toJSBoolean(any_getType_result1) then
			applyExtensionObject_upvr(any_getType_result1, _2.extensions)
			if _2.type == "object" or _2.type == "interface" then
				for _, v_2 in Object_upvr.entries(_2.fields) do
					local _2_2 = v_2[2]
					local any_get_result1 = any_getType_result1:getFields():get(v_2[1])
					if Boolean_upvr.toJSBoolean(any_get_result1) then
						applyExtensionObject_upvr(any_get_result1, _2_2.extensions)
						for _, v_3 in Object_upvr.entries(_2_2.arguments) do
							local unpacked_value_1_2_upvr, unpacked_value_2 = table.unpack(v_3, 1, 2)
							applyExtensionObject_upvr(Array_upvr.find(any_get_result1.args, function(arg1_2) -- Line 107
								--[[ Upvalues[1]:
									[1]: unpacked_value_1_2_upvr (readonly)
								]]
								local var46
								if arg1_2.name ~= unpacked_value_1_2_upvr then
									var46 = false
								else
									var46 = true
								end
								return var46
							end), unpacked_value_2)
						end
					end
				end
			elseif _2.type == "input" then
				for _, v_4 in Object_upvr.entries(_2.fields) do
					any_get_result1 = 1
					local unpacked_value_1, unpacked_value_2_2 = table.unpack(v_4, any_get_result1, 2)
					any_get_result1 = any_getType_result1:getFields():get(unpacked_value_1)
					applyExtensionObject_upvr(any_get_result1, unpacked_value_2_2.extensions)
				end
			elseif _2.type == "enum" then
				for _, v_5 in Object_upvr.entries(_2.values) do
					any_get_result1 = 1
					local unpacked_value_1_3, unpacked_value_2_3 = table.unpack(v_5, any_get_result1, 2)
					any_get_result1 = any_getType_result1:getValue(unpacked_value_1_3)
					applyExtensionObject_upvr(any_get_result1, unpacked_value_2_3)
				end
			end
		end
	end
	return arg1
end
return module