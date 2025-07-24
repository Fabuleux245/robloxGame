-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:12
-- Luau version 6, Types version 3
-- Time taken: 0.007340 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module = {}
local isSome_upvr = require(Parent.Utils).isSome
local function directiveAlreadyExists_upvr(arg1, arg2) -- Line 43, Named "directiveAlreadyExists"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	return Boolean_upvr.toJSBoolean(Array_upvr.find(arg1, function(arg1_2) -- Line 49
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var9
		if arg1_2.name.value ~= arg2.name.value then
			var9 = false
		else
			var9 = true
		end
		return var9
	end))
end
local function _(arg1, arg2) -- Line 54, Named "nameAlreadyExists"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.some(arg2, function(arg1_3) -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var11
		if arg1_3.value ~= arg1.value then
			var11 = false
		else
			var11 = true
		end
		return var11
	end)
end
local deduplicateLists_upvw
local function mergeArguments_upvr(arg1, arg2) -- Line 60, Named "mergeArguments"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: deduplicateLists_upvw (read and write)
		[3]: Boolean_upvr (readonly)
	]]
	local any_concat_result1 = Array_upvr.concat({}, arg2)
	for _, v_upvr in arg1 do
		local any_findIndex_result1 = Array_upvr.findIndex(any_concat_result1, function(arg1_4) -- Line 73
			--[[ Upvalues[1]:
				[1]: v_upvr (readonly)
			]]
			local var17
			if arg1_4.name.value ~= v_upvr.name.value then
				var17 = false
			else
				var17 = true
			end
			return var17
		end)
		if -1 < any_findIndex_result1 then
			local var19 = any_concat_result1[any_findIndex_result1]
			if var19.value.kind == "ListValue" then
				var19.value.values = deduplicateLists_upvw(var19.value.values, v_upvr.value.values, function(arg1_5, arg2_2) -- Line 87
					--[[ Upvalues[2]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: Array_upvr (copied, readonly)
					]]
					local value_upvr = arg1_5.value
					local var22 = not Boolean_upvr.toJSBoolean(value_upvr)
					if not var22 then
						var22 = not Array_upvr.some(arg2_2, function(arg1_6) -- Line 94
							--[[ Upvalues[1]:
								[1]: value_upvr (readonly)
							]]
							local var24
							if arg1_6.value ~= value_upvr then
								var24 = false
							else
								var24 = true
							end
							return var24
						end)
					end
					return var22
				end)
			else
				var19.value = v_upvr.value
			end
		else
			table.insert(any_concat_result1, v_upvr)
		end
	end
	return any_concat_result1
end
local function _(arg1) -- Line 108, Named "deduplicateDirectives"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: mergeArguments_upvr (readonly)
		[3]: isSome_upvr (readonly)
	]]
	return Array_upvr.filter(Array_upvr.map(arg1, function(arg1_7, arg2, arg3) -- Line 112
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: mergeArguments_upvr (copied, readonly)
		]]
		local any_findIndex_result1_2 = Array_upvr.findIndex(arg3, function(arg1_8) -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1_7 (readonly)
			]]
			local var27
			if arg1_8.name.value ~= arg1_7.name.value then
				var27 = false
			else
				var27 = true
			end
			return var27
		end)
		if any_findIndex_result1_2 ~= arg2 then
			arg1_7.arguments = mergeArguments_upvr(arg1_7.arguments, arg3[any_findIndex_result1_2].arguments)
			return nil
		end
		return arg1_7
	end), isSome_upvr)
end
function module.mergeDirectives(arg1, arg2, arg3) -- Line 133
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: mergeArguments_upvr (readonly)
		[4]: isSome_upvr (readonly)
		[5]: directiveAlreadyExists_upvr (readonly)
	]]
	if arg1 ~= nil then
		local _ = arg1
	else
	end
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	if arg3 then
		local _ = arg3.reverseDirectives
	else
	end
	if Boolean_upvr.toJSBoolean(arg3) then
		-- KONSTANTWARNING: GOTO [26] #21
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if Boolean_upvr.toJSBoolean(arg3) then
	else
	end
	local any_filter_result1 = Array_upvr.filter(Array_upvr.map(Array_upvr.concat({}, {}), function(arg1_9, arg2_3, arg3_2) -- Line 112
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: mergeArguments_upvr (copied, readonly)
		]]
		local any_findIndex_result1_4 = Array_upvr.findIndex(arg3_2, function(arg1_10) -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1_9 (readonly)
			]]
			local var38
			if arg1_10.name.value ~= arg1_9.name.value then
				var38 = false
			else
				var38 = true
			end
			return var38
		end)
		if any_findIndex_result1_4 ~= arg2_3 then
			arg1_9.arguments = mergeArguments_upvr(arg1_9.arguments, arg3_2[any_findIndex_result1_4].arguments)
			return nil
		end
		return arg1_9
	end), isSome_upvr)
	for _, v_2_upvr in {} do
		local var41
		if Boolean_upvr.toJSBoolean(directiveAlreadyExists_upvr(any_filter_result1, v_2_upvr)) then
			local any_findIndex_result1_3 = Array_upvr.findIndex(any_filter_result1, function(arg1_11) -- Line 155
				--[[ Upvalues[1]:
					[1]: v_2_upvr (readonly)
				]]
				local var43
				if arg1_11.name.value ~= v_2_upvr.name.value then
					var43 = false
				else
					var43 = true
				end
				return var43
			end)
			local var45 = any_filter_result1[any_findIndex_result1_3]
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var41 = v_2_upvr.arguments
				return var41
			end
			if not Boolean_upvr.toJSBoolean(v_2_upvr.arguments) or not INLINED() then
				var41 = {}
			end
			if not Boolean_upvr.toJSBoolean(var45.arguments) or not var45.arguments then
			end
			any_filter_result1[any_findIndex_result1_3].arguments = mergeArguments_upvr(var41, {})
		else
			table.insert(any_filter_result1, v_2_upvr)
		end
	end
	return any_filter_result1
end
local print_upvr = require(Parent.GraphQL).print
local Error_upvr = LuauPolyfill.Error
local function validateInputs_upvr(arg1, arg2) -- Line 176, Named "validateInputs"
	--[[ Upvalues[4]:
		[1]: print_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Error_upvr (readonly)
	]]
	local var46_result1 = print_upvr(Object_upvr.assign({}, arg1, {
		description = Object_upvr.None;
	}))
	local var46_result1_2 = print_upvr(Object_upvr.assign({}, arg2, {
		description = Object_upvr.None;
	}))
	local var52
	if var46_result1:gsub("directive @w*d*", ""):gsub(" on .*$", "") ~= var46_result1_2:gsub("directive @w*d*", ""):gsub(" on .*$", "") then
		var52 = false
	else
		var52 = true
	end
	if not Boolean_upvr.toJSBoolean(var52) then
		error(Error_upvr.new("Unable to merge GraphQL directive \"%s\". \nExisting directive:  \n\t%s \nReceived directive: \n\t%s":format(tostring(arg1.name.value), tostring(var46_result1_2), tostring(var46_result1))))
	end
end
function module.mergeDirective(arg1, arg2) -- Line 201
	--[[ Upvalues[3]:
		[1]: validateInputs_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	if arg2 then
		validateInputs_upvr(arg1, arg2)
		return Object_upvr.assign({}, arg1, {
			locations = Array_upvr.concat({}, arg2.locations, Array_upvr.filter(arg1.locations, function(arg1_12) -- Line 219
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: Array_upvr (copied, readonly)
				]]
				return not Array_upvr.some(arg2.locations, function(arg1_13) -- Line 55
					--[[ Upvalues[1]:
						[1]: arg1_12 (readonly)
					]]
					local var56
					if arg1_13.value ~= arg1_12.value then
						var56 = false
					else
						var56 = true
					end
					return var56
				end)
			end));
		})
	end
	return arg1
end
function deduplicateLists_upvw(arg1, arg2, arg3) -- Line 229, Named "deduplicateLists"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.concat(arg1, Array_upvr.filter(arg2, function(arg1_14) -- Line 247
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
		]]
		return arg3(arg1_14, arg1)
	end))
end
return module