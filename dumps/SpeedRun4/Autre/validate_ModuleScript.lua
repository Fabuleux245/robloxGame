-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:38
-- Luau version 6, Types version 3
-- Time taken: 0.002993 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local visitor = require(Parent.language.visitor)
local visit_upvr = visitor.visit
local visitInParallel_upvr = visitor.visitInParallel
local TypeInfo = require(Parent.utilities.TypeInfo)
local specifiedRules = require(Parent_2.specifiedRules)
local ValidationContext = require(Parent_2.ValidationContext)
local module_upvr_2 = {}
local specifiedRules_2_upvr = specifiedRules.specifiedRules
local TypeInfo_2_upvr = TypeInfo.TypeInfo
local devAssert_upvr = require(Parent.jsutils.devAssert).devAssert
local assertValidSchema_upvr = require(Parent.type.validate).assertValidSchema
local ValidationContext_upvr = ValidationContext.ValidationContext
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local visitWithTypeInfo_upvr = TypeInfo.visitWithTypeInfo
function module_upvr_2.validate(arg1, arg2, arg3, arg4, arg5) -- Line 64
	--[[ Upvalues[10]:
		[1]: specifiedRules_2_upvr (readonly)
		[2]: TypeInfo_2_upvr (readonly)
		[3]: devAssert_upvr (readonly)
		[4]: assertValidSchema_upvr (readonly)
		[5]: ValidationContext_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
		[7]: visitInParallel_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: visit_upvr (readonly)
		[10]: visitWithTypeInfo_upvr (readonly)
	]]
	if arg3 then
	else
	end
	if arg4 then
		local _ = arg4
	else
		({}).maxErrors = nil
	end
	if arg5 then
		local _ = arg5
	else
	end
	devAssert_upvr(arg2, "Must provide document.")
	assertValidSchema_upvr(arg1)
	local tbl_upvr = {}
	local module_upvr_3 = {}
	local tbl_upvr_2 = {}
	local any_new_result1_upvr = ValidationContext_upvr.new(arg1, arg2, TypeInfo_2_upvr.new(arg1), function(arg1_2) -- Line 82
		--[[ Upvalues[4]:
			[1]: tbl_upvr_2 (readonly)
			[2]: module_upvr_3 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
			[4]: tbl_upvr (readonly)
		]]
		if tbl_upvr_2.maxErrors ~= nil and tbl_upvr_2.maxErrors <= #module_upvr_3 then
			table.insert(module_upvr_3, GraphQLError_upvr.new("Too many validation errors, error limit reached. Validation aborted."))
			error(tbl_upvr)
		end
		table.insert(module_upvr_3, arg1_2)
	end)
	local any_new_result1_upvr_3 = TypeInfo_2_upvr.new(arg1)
	local visitInParallel_upvr_result1_upvr = visitInParallel_upvr(Array_upvr.map(specifiedRules_2_upvr, function(arg1_3) -- Line 98
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return arg1_3(any_new_result1_upvr)
	end))
	local pcall_result1, pcall_result2 = pcall(function() -- Line 103
		--[[ Upvalues[5]:
			[1]: visit_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: visitWithTypeInfo_upvr (copied, readonly)
			[4]: any_new_result1_upvr_3 (readonly)
			[5]: visitInParallel_upvr_result1_upvr (readonly)
		]]
		visit_upvr(arg2, visitWithTypeInfo_upvr(any_new_result1_upvr_3, visitInParallel_upvr_result1_upvr))
	end)
	if not pcall_result1 and pcall_result2 ~= tbl_upvr then
		error(pcall_result2)
	end
	return module_upvr_3
end
local specifiedSDLRules_upvr = specifiedRules.specifiedSDLRules
local SDLValidationContext_upvr = ValidationContext.SDLValidationContext
function module_upvr_2.validateSDL(arg1, arg2, arg3) -- Line 118
	--[[ Upvalues[5]:
		[1]: specifiedSDLRules_upvr (readonly)
		[2]: SDLValidationContext_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: visit_upvr (readonly)
		[5]: visitInParallel_upvr (readonly)
	]]
	if arg3 then
	else
	end
	local module_upvr = {}
	local any_new_result1_upvr_2 = SDLValidationContext_upvr.new(arg1, arg2, function(arg1_4) -- Line 126
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		table.insert(module_upvr, arg1_4)
	end)
	visit_upvr(arg1, visitInParallel_upvr(Array_upvr.map(specifiedSDLRules_upvr, function(arg1_5) -- Line 129
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return arg1_5(any_new_result1_upvr_2)
	end)))
	return module_upvr
end
function module_upvr_2.assertValidSDL(arg1) -- Line 142
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: Error_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local any_validateSDL_result1_2 = module_upvr_2.validateSDL(arg1)
	if #any_validateSDL_result1_2 ~= 0 then
		error(Error_upvr.new(table.concat(Array_upvr.map(any_validateSDL_result1_2, function(arg1_6) -- Line 146
			return arg1_6.message
		end), "\n\n")))
	end
end
function module_upvr_2.assertValidSDLExtension(arg1, arg2) -- Line 160
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: Error_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local any_validateSDL_result1 = module_upvr_2.validateSDL(arg1, arg2)
	if #any_validateSDL_result1 ~= 0 then
		error(Error_upvr.new(table.concat(Array_upvr.map(any_validateSDL_result1, function(arg1_7) -- Line 164
			if typeof(arg1_7) == "string" then
				return arg1_7
			end
			return arg1_7.message
		end), "\n\n")))
	end
end
return module_upvr_2