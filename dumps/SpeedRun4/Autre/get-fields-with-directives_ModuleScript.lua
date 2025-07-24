-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:24
-- Luau version 6, Types version 3
-- Time taken: 0.001761 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_2 = {}
local Boolean_upvr = LuauPolyfill.Boolean
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local valueFromASTUntyped_upvr = require(Parent.GraphQL).valueFromASTUntyped
function module_2.getFieldsWithDirectives(arg1, arg2) -- Line 35
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: valueFromASTUntyped_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	local module_upvw = {"ObjectTypeDefinition", "ObjectTypeExtension"}
	if Boolean_upvr.toJSBoolean(({}).includeInputTypes) then
		module_upvw = Array_upvr.concat({}, module_upvw, {"InputObjectTypeDefinition", "InputObjectTypeExtension"})
	end
	for _, v in Array_upvr.filter(arg1.definitions, function(arg1_2) -- Line 45
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: module_upvw (read and write)
		]]
		return Array_upvr.includes(module_upvw, arg1_2.kind)
	end), nil do
		if v.fields ~= nil then
			for _, v_2 in v.fields do
				if Boolean_upvr.toJSBoolean(v_2.directives) and 0 < #v_2.directives then
					({})[tostring("%s.%s":format(tostring(v.name.value), tostring(v_2.name.value)))] = Array_upvr.map(v_2.directives, function(arg1_3) -- Line 70
						--[[ Upvalues[4]:
							[1]: Array_upvr (copied, readonly)
							[2]: Boolean_upvr (copied, readonly)
							[3]: Object_upvr (copied, readonly)
							[4]: valueFromASTUntyped_upvr (copied, readonly)
						]]
						local module = {
							name = arg1_3.name.value;
						}
						local var21
						local function INLINED() -- Internal function, doesn't exist in bytecode
							var21 = arg1_3.arguments
							return var21
						end
						if not Boolean_upvr.toJSBoolean(arg1_3.arguments) or not INLINED() then
							var21 = {}
						end
						module.args = Array_upvr.reduce(var21, function(arg1_4, arg2_2) -- Line 77
							--[[ Upvalues[2]:
								[1]: Object_upvr (copied, readonly)
								[2]: valueFromASTUntyped_upvr (copied, readonly)
							]]
							return Object_upvr.assign({}, arg1_4, {
								[arg2_2.name.value] = valueFromASTUntyped_upvr(arg2_2.value, nil);
							})
						end, {})
						return module
					end)
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module_2