-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:17
-- Luau version 6, Types version 3
-- Time taken: 0.002690 seconds

local Parent = script.Parent.Parent.Parent.Parent
local definition = require(Parent.type.definition)
local module = {}
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local getNamedType_upvr = definition.getNamedType
local isInputObjectType_upvr = definition.isInputObjectType
function module.NoDeprecatedCustomRule(arg1) -- Line 28
	--[[ Upvalues[4]:
		[1]: invariant_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: getNamedType_upvr (readonly)
		[4]: isInputObjectType_upvr (readonly)
	]]
	return {
		Field = function(arg1_2, arg2) -- Line 30, Named "Field"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: invariant_upvr (copied, readonly)
				[3]: GraphQLError_upvr (copied, readonly)
			]]
			local any_getFieldDef_result1 = arg1:getFieldDef()
			local var11
			if var11 then
				var11 = any_getFieldDef_result1.deprecationReason
			end
			local var12
			if any_getFieldDef_result1 and var11 ~= nil then
				local any_getParentType_result1_2 = arg1:getParentType()
				if any_getParentType_result1_2 == nil then
					var12 = false
				else
					var12 = true
				end
				invariant_upvr(var12)
				arg1:reportError(GraphQLError_upvr.new("The field %s.%s is deprecated. %s":format(any_getParentType_result1_2.name, any_getFieldDef_result1.name, var11), arg2))
			end
		end;
		Argument = function(arg1_3, arg2) -- Line 48, Named "Argument"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: GraphQLError_upvr (copied, readonly)
				[3]: invariant_upvr (copied, readonly)
			]]
			local any_getArgument_result1 = arg1:getArgument()
			local var15
			if var15 then
				var15 = any_getArgument_result1.deprecationReason
			end
			if any_getArgument_result1 and var15 ~= nil then
				local any_getDirective_result1 = arg1:getDirective()
				if any_getDirective_result1 ~= nil then
					arg1:reportError(GraphQLError_upvr.new("Directive \"@%s\" argument \"%s\" is deprecated. %s":format(any_getDirective_result1.name, any_getArgument_result1.name, var15), arg2))
					return
				end
				local any_getParentType_result1 = arg1:getParentType()
				local any_getFieldDef_result1_2 = arg1:getFieldDef()
				local var19 = false
				if any_getParentType_result1 ~= nil then
					if any_getFieldDef_result1_2 == nil then
						var19 = false
					else
						var19 = true
					end
				end
				invariant_upvr(var19)
				arg1:reportError(GraphQLError_upvr.new("Field \"%s.%s\" argument \"%s\" is deprecated. %s":format(any_getParentType_result1.name, any_getFieldDef_result1_2.name, any_getArgument_result1.name, var15), arg2))
			end
		end;
		ObjectField = function(arg1_4, arg2) -- Line 82, Named "ObjectField"
			--[[ Upvalues[4]:
				[1]: getNamedType_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isInputObjectType_upvr (copied, readonly)
				[4]: GraphQLError_upvr (copied, readonly)
			]]
			local var7_result1 = getNamedType_upvr(arg1:getParentInputType())
			local var21
			if isInputObjectType_upvr(var7_result1) then
				local any_get_result1 = var7_result1:getFields():get(arg2.name.value)
				var21 = any_get_result1
				if var21 then
					var21 = any_get_result1.deprecationReason
				end
				if var21 ~= nil then
					arg1:reportError(GraphQLError_upvr.new("The input field %s.%s is deprecated. %s":format(var7_result1.name, any_get_result1.name, var21), arg2))
				end
			end
		end;
		EnumValue = function(arg1_5, arg2) -- Line 103, Named "EnumValue"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: getNamedType_upvr (copied, readonly)
				[3]: invariant_upvr (copied, readonly)
				[4]: GraphQLError_upvr (copied, readonly)
			]]
			local any_getEnumValue_result1 = arg1:getEnumValue()
			local var24
			if var24 then
				var24 = any_getEnumValue_result1.deprecationReason
			end
			local var25
			if any_getEnumValue_result1 and var24 ~= nil then
				local getNamedType_upvr_result1 = getNamedType_upvr(arg1:getInputType())
				if getNamedType_upvr_result1 == nil then
					var25 = false
				else
					var25 = true
				end
				invariant_upvr(var25)
				arg1:reportError(GraphQLError_upvr.new("The enum value \"%s.%s\" is deprecated. %s":format(getNamedType_upvr_result1.name, any_getEnumValue_result1.name, var24), arg2))
			end
		end;
	}
end
return module