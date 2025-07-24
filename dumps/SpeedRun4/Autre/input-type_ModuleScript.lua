-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:15
-- Luau version 6, Types version 3
-- Time taken: 0.001490 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_2 = {}
local Boolean_upvr = LuauPolyfill.Boolean
local mergeFields_upvr = require(script.Parent.fields).mergeFields
local mergeDirectives_upvr = require(script.Parent.directives).mergeDirectives
local Error_upvr = LuauPolyfill.Error
local Object_upvr = LuauPolyfill.Object
local Kind_upvr = require(Parent.GraphQL).Kind
function module_2.mergeInputType(arg1, arg2, arg3) -- Line 29
	--[[ Upvalues[6]:
		[1]: Boolean_upvr (readonly)
		[2]: mergeFields_upvr (readonly)
		[3]: mergeDirectives_upvr (readonly)
		[4]: Error_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: Kind_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg2) then
		local pcall_result1, pcall_result2 = pcall(function() -- Line 37
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: arg3 (readonly)
				[5]: mergeFields_upvr (copied, readonly)
				[6]: mergeDirectives_upvr (copied, readonly)
			]]
			local module = {}
			local name = arg1.name
			module.name = name
			if Boolean_upvr.toJSBoolean(arg1.description) then
				name = arg1.description
			else
				name = arg2.description
			end
			module.description = name
			local var13 = arg3
			if var13 then
				var13 = arg3.convertExtensions
			end
			if Boolean_upvr.toJSBoolean(var13) or arg1.kind == "InputObjectTypeDefinition" or arg2.kind == "InputObjectTypeDefinition" then
				name = "InputObjectTypeDefinition"
			else
				name = "InputObjectTypeExtension"
			end
			module.kind = name
			name = arg1.loc
			module.loc = name
			name = mergeFields_upvr(arg1, arg1.fields, arg2.fields, arg3)
			module.fields = name
			name = mergeDirectives_upvr(arg1.directives, arg2.directives, arg3)
			module.directives = name
			return module
		end)
		if not pcall_result1 then
			error(Error_upvr.new("Unable to merge GraphQL input type \"%s\": %s":format(tostring(arg1.name.value), tostring(pcall_result2.message))))
		end
		return pcall_result2
	end
	if arg3 and Boolean_upvr.toJSBoolean(arg3.convertExtensions) then
		return Object_upvr.assign({}, arg1, {
			kind = Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION;
		})
	end
	return arg1
end
return module_2