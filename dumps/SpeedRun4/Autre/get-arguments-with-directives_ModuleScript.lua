-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:23
-- Luau version 6, Types version 3
-- Time taken: 0.003181 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_3 = {}
local GraphQL = require(Parent.GraphQL)
local Kind_upvr = GraphQL.Kind
local function isTypeWithFields_upvr(arg1) -- Line 31, Named "isTypeWithFields"
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var6 = true
	if arg1.kind ~= Kind_upvr.OBJECT_TYPE_DEFINITION then
		if arg1.kind ~= Kind_upvr.OBJECT_TYPE_EXTENSION then
			var6 = false
		else
			var6 = true
		end
	end
	return var6
end
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local valueFromASTUntyped_upvr = GraphQL.valueFromASTUntyped
function module_3.getArgumentsWithDirectives(arg1) -- Line 38
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: isTypeWithFields_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: valueFromASTUntyped_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {}
	for _, v in Array_upvr.filter(arg1.definitions, isTypeWithFields_upvr), nil do
		if v.fields ~= nil then
			for _, v_2 in v.fields do
				local var36
				if typeof(v_2.arguments) == "table" then
					var36 = v_2.arguments
				else
					var36 = nil
				end
				if var36 ~= nil then
					local function var37(arg1_2) -- Line 62
						--[[ Upvalues[1]:
							[1]: Boolean_upvr (copied, readonly)
						]]
						local var38 = Boolean_upvr
						if typeof(arg1_2.directives) == "table" then
							var38 = #arg1_2.directives
						else
							var38 = nil
						end
						return var38.toJSBoolean(var38)
					end
					local _ = Array_upvr.filter(var36, var37)
				else
				end
				var37 = Boolean_upvr
				local var40 = var37
				if typeof(nil) == "table" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				else
				end
				if var40.toJSBoolean(nil) then
					module_2[tostring("%s.%s":format(tostring(v.name.value), tostring(v_2.name.value)))] = {}
					for _, v_3 in nil do
						module_2[tostring("%s.%s":format(tostring(v.name.value), tostring(v_2.name.value)))][tostring(v_3.name.value)] = Array_upvr.map(v_3.directives, function(arg1_3) -- Line 84
							--[[ Upvalues[4]:
								[1]: Array_upvr (copied, readonly)
								[2]: Boolean_upvr (copied, readonly)
								[3]: Object_upvr (copied, readonly)
								[4]: valueFromASTUntyped_upvr (copied, readonly)
							]]
							local module = {
								name = arg1_3.name.value;
							}
							local var43
							local function INLINED() -- Internal function, doesn't exist in bytecode
								var43 = arg1_3.arguments
								return var43
							end
							if not Boolean_upvr.toJSBoolean(arg1_3.arguments) or not INLINED() then
								var43 = {}
							end
							module.args = Array_upvr.reduce(var43, function(arg1_4, arg2) -- Line 91
								--[[ Upvalues[2]:
									[1]: Object_upvr (copied, readonly)
									[2]: valueFromASTUntyped_upvr (copied, readonly)
								]]
								return Object_upvr.assign({}, arg1_4, {
									[arg2.name.value] = valueFromASTUntyped_upvr(arg2.value, {});
								})
							end, {})
							return module
						end)
						local _
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
				end
			end
		end
	end
	return module_2
end
return module_3