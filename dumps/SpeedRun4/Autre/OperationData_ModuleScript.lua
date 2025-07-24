-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:56
-- Luau version 6, Types version 3
-- Time taken: 0.003341 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local Boolean_upvr = require(Parent.Parent.LuauPolyfill).Boolean
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local parser = require(script.Parent.Parent.parser)
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
function tbl_2_upvr.new(arg1, arg2) -- Line 39
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local tbl = {}
	local var9
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var9 = arg1
		return var9
	end
	if not Boolean_upvr.toJSBoolean(arg1) or not INLINED() then
		var9 = {}
	end
	tbl.options = var9
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var9 = arg2
		return var9
	end
	if not Boolean_upvr.toJSBoolean(arg2) or not INLINED_2() then
		var9 = {}
	end
	tbl.context = var9
	var9 = setmetatable(tbl, tbl_2_upvr)
	return var9
end
function tbl_2_upvr.getOptions(arg1) -- Line 46
	return arg1.options
end
local equal_upvr = require(Parent.jsutils.equal)
function tbl_2_upvr.setOptions(arg1, arg2, arg3) -- Line 50
	--[[ Upvalues[1]:
		[1]: equal_upvr (readonly)
	]]
	if arg3 == nil then
	end
	if false and not equal_upvr(arg1.options, arg2) then
		arg1.previousOptions = arg1.options
	end
	arg1.options = arg2
end
function tbl_2_upvr.unmount(arg1) -- Line 60
	arg1.isMounted = false
end
function tbl_2_upvr.refreshClient(arg1) -- Line 64
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: invariant_upvr (readonly)
	]]
	local var11 = Boolean_upvr
	local var12
	if Boolean_upvr.toJSBoolean(arg1.options) then
		var11 = arg1.options.client
	else
		var11 = arg1.options
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		if Boolean_upvr.toJSBoolean(arg1.options) then
			var12 = arg1.options.client
		else
			var12 = arg1.options
		end
		return var12
	end
	if not var11.toJSBoolean(var11) or not INLINED_3() then
		if Boolean_upvr.toJSBoolean(arg1.context) then
			var12 = arg1.context.client
		else
			var12 = arg1.context
		end
	end
	invariant_upvr(Boolean_upvr.toJSBoolean(var12), "Could not find \"client\" in the context or passed in as an option. ".."Wrap the root component in an <ApolloProvider>, or pass an ".."ApolloClient instance in via options.")
	local var13 = false
	if var12 ~= arg1.client then
		var13 = true
		arg1.client = var12
		arg1:cleanup()
	end
	return {
		client = arg1.client;
		isNew = var13;
	}
end
local parser_upvr = parser.parser
local operationName_upvr = parser.operationName
function tbl_2_upvr.verifyDocumentType(arg1, arg2, arg3) -- Line 99
	--[[ Upvalues[3]:
		[1]: parser_upvr (readonly)
		[2]: operationName_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	local parser_upvr_result1 = parser_upvr(arg2)
	local operationName_upvr_result1 = operationName_upvr(arg3)
	local var19
	if parser_upvr_result1.type ~= arg3 then
		var19 = false
	else
		var19 = true
	end
	invariant_upvr(var19, "Running a %s requires a graphql ":format(operationName_upvr_result1).."%s, but a %s was used instead.":format(operationName_upvr_result1, operationName_upvr(parser_upvr_result1.type)))
end
module.OperationData = tbl_2_upvr
return module