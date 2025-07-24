-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:56
-- Luau version 6, Types version 3
-- Time taken: 0.003801 seconds

local module_2 = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local DocumentType_upvr = require(script.Parent.Parent.parser).DocumentType
local OperationData_upvr = require(script.Parent.OperationData).OperationData
local setmetatable_result1_upvr = setmetatable({}, {
	__index = OperationData_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new(arg1) -- Line 83
	--[[ Upvalues[4]:
		[1]: OperationData_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: DocumentType_upvr (readonly)
		[4]: setmetatable_result1_upvr (readonly)
	]]
	local any_new_result1_upvr = OperationData_upvr.new(arg1.options, arg1.context)
	function any_new_result1_upvr.runMutation(arg1_2) -- Line 92
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Boolean_upvr (copied, readonly)
		]]
		if arg1_2 == nil then
		end
		any_new_result1_upvr:onMutationStart()
		local any_generateNewMutationId_result1_upvr = any_new_result1_upvr:generateNewMutationId()
		return any_new_result1_upvr:mutate({}):andThen(function(arg1_3) -- Line 100
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: any_generateNewMutationId_result1_upvr (readonly)
			]]
			any_new_result1_upvr:onMutationCompleted(arg1_3, any_generateNewMutationId_result1_upvr)
			return arg1_3
		end):catch(function(arg1_4) -- Line 104
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: any_generateNewMutationId_result1_upvr (readonly)
				[3]: Boolean_upvr (copied, readonly)
			]]
			local any_getOptions_result1 = any_new_result1_upvr:getOptions()
			local onError = any_getOptions_result1.onError
			any_new_result1_upvr:onMutationError(arg1_4, any_generateNewMutationId_result1_upvr)
			if Boolean_upvr.toJSBoolean(onError) then
				onError(any_getOptions_result1, arg1_4)
				local module = {
					data = nil;
				}
				module.errors = arg1_4
				return module
			end
			error(arg1_4)
		end)
	end
	any_new_result1_upvr:verifyDocumentType(arg1.options.mutation, DocumentType_upvr.Mutation)
	any_new_result1_upvr.result = arg1.result
	any_new_result1_upvr.setResult = arg1.setResult
	any_new_result1_upvr.mostRecentMutationId = 0
	return setmetatable(any_new_result1_upvr, setmetatable_result1_upvr)
end
local Object_upvr = LuauPolyfill.Object
function setmetatable_result1_upvr.execute(arg1, arg2) -- Line 127
	--[[ Upvalues[2]:
		[1]: DocumentType_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	arg1.isMounted = true
	arg1:verifyDocumentType(arg1:getOptions().mutation, DocumentType_upvr.Mutation)
	return {arg1.runMutation, Object_upvr.assign({}, arg2, {
		client = arg1:refreshClient().client;
	})}
end
function setmetatable_result1_upvr.afterExecute(arg1) -- Line 133
	arg1.isMounted = true
	return function(...) -- Line 135
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:unmount(...)
	end
end
function setmetatable_result1_upvr.cleanup(arg1) -- Line 140
end
local mergeOptions_upvr = require(Parent.core).mergeOptions
function setmetatable_result1_upvr.mutate(arg1, arg2) -- Line 144
	--[[ Upvalues[1]:
		[1]: mergeOptions_upvr (readonly)
	]]
	return arg1:refreshClient().client:mutate(mergeOptions_upvr(arg1:getOptions(), arg2))
end
function setmetatable_result1_upvr.onMutationStart(arg1) -- Line 148
	if not arg1.result.loading and not arg1:getOptions().ignoreResults then
		arg1:updateResult({
			loading = true;
			error = nil;
			data = nil;
			called = true;
		})
	end
end
local ApolloError_upvr = require(Parent.errors).ApolloError
function setmetatable_result1_upvr.onMutationCompleted(arg1, arg2, arg3) -- Line 160
	--[[ Upvalues[2]:
		[1]: ApolloError_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local any_getOptions_result1_2 = arg1:getOptions()
	local onCompleted_upvr = any_getOptions_result1_2.onCompleted
	local data_upvr = arg2.data
	local errors = arg2.errors
	local var28
	if errors and 0 < #errors then
		var28 = ApolloError_upvr.new
		var28 = var28({
			graphQLErrors = errors;
		})
	else
		var28 = nil
	end
	local function _() -- Line 172, Named "callOncomplete"
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: onCompleted_upvr (readonly)
			[3]: data_upvr (readonly)
		]]
		if Boolean_upvr.toJSBoolean(onCompleted_upvr) then
			return onCompleted_upvr(data_upvr)
		end
		return nil
	end
	if arg1:isMostRecentMutation(arg3) and not any_getOptions_result1_2.ignoreResults then
		arg1:updateResult({
			called = true;
			loading = false;
			data = data_upvr;
			error = var28;
		})
	end
	if Boolean_upvr.toJSBoolean(onCompleted_upvr) then
		do
			return
		end
		return
	end
end
function setmetatable_result1_upvr.onMutationError(arg1, arg2, arg3) -- Line 191
	if arg1:isMostRecentMutation(arg3) then
		local tbl = {
			loading = false;
		}
		tbl.error = arg2
		tbl.data = nil
		tbl.called = true
		arg1:updateResult(tbl)
	end
end
function setmetatable_result1_upvr.generateNewMutationId(arg1) -- Line 202
	arg1.mostRecentMutationId += 1
	return arg1.mostRecentMutationId
end
function setmetatable_result1_upvr.isMostRecentMutation(arg1, arg2) -- Line 207
	local var32
	if arg1.mostRecentMutationId ~= arg2 then
		var32 = false
	else
		var32 = true
	end
	return var32
end
local equal_upvr = require(Parent.jsutils.equal)
function setmetatable_result1_upvr.updateResult(arg1, arg2) -- Line 211
	--[[ Upvalues[1]:
		[1]: equal_upvr (readonly)
	]]
	if arg1.isMounted and (not arg1.previousResult or not equal_upvr(arg1.previousResult, arg2)) then
		arg1:setResult(arg2)
		arg1.previousResult = arg2
		return arg2
	end
	return nil
end
module_2.MutationData = setmetatable_result1_upvr
return module_2