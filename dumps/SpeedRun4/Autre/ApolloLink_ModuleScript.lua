-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:24
-- Luau version 6, Types version 3
-- Time taken: 0.006419 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Error_upvr = LuauPolyfill.Error
local invariant = require(Parent.jsutils.invariant)
local Observable_upvr = require(Parent.utilities).Observable
local utils = require(script.Parent.Parent.utils)
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function passthrough_upvr(arg1, arg2, arg3) -- Line 53, Named "passthrough"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Observable_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg3) then
		return arg3(arg2)
	end
	return Observable_upvr.of()
end
local function toLink_upvr(arg1) -- Line 61, Named "toLink"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if typeof(arg1) == "function" then
		return tbl_upvr.new(arg1)
	end
	return arg1
end
local function _(arg1) -- Line 69, Named "isTerminating"
	local var10 = 'a'
	local info, NONE = debug.info(arg1.request, var10)
	if info > 2 then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Error_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local function new(arg1, arg2) -- Line 79
	--[[ Upvalues[2]:
		[1]: Error_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local any_new_result1 = Error_upvr.new(arg1)
	any_new_result1.link = arg2
	return setmetatable(any_new_result1, setmetatable_result1_upvr)
end
setmetatable_result1_upvr.new = new
function tbl_upvr.empty() -- Line 86
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Observable_upvr (readonly)
	]]
	return tbl_upvr.new(function(arg1) -- Line 87
		--[[ Upvalues[1]:
			[1]: Observable_upvr (copied, readonly)
		]]
		return Observable_upvr.of()
	end)
end
local Array_upvr = LuauPolyfill.Array
function tbl_upvr.from(arg1) -- Line 92
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: toLink_upvr (readonly)
	]]
	if #arg1 == 0 then
		return tbl_upvr.empty()
	end
	return Array_upvr.reduce(Array_upvr.map(arg1, toLink_upvr, nil), function(arg1_2, arg2) -- Line 96
		return arg1_2:concat(arg2)
	end)
end
function tbl_upvr.split_(arg1, arg2, arg3) -- Line 101
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: passthrough_upvr (readonly)
		[4]: Observable_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	if typeof(arg2) == "function" then
	else
	end
	if Boolean_upvr.toJSBoolean(arg3) and arg3 ~= nil then
		if typeof(arg3) == "function" then
		else
		end
		-- KONSTANTWARNING: GOTO [61] #50
	end
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 33. Error Block 36 start (CF ANALYSIS FAILED)
	if typeof(tbl_upvr.new(passthrough_upvr)) == "function" then
		-- KONSTANTWARNING: GOTO [61] #50
	end
	-- KONSTANTERROR: [40] 33. Error Block 36 end (CF ANALYSIS FAILED)
end
local createOperation_upvr = utils.createOperation
local transformOperation_upvr = utils.transformOperation
local validateOperation_upvr = utils.validateOperation
function tbl_upvr.execute(arg1, arg2) -- Line 137
	--[[ Upvalues[5]:
		[1]: createOperation_upvr (readonly)
		[2]: transformOperation_upvr (readonly)
		[3]: validateOperation_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: Observable_upvr (readonly)
	]]
	local any_request_result1_2 = arg1:request(createOperation_upvr(arg2.context, transformOperation_upvr(validateOperation_upvr(arg2))))
	local var24
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var24 = any_request_result1_2
		return var24
	end
	if not Boolean_upvr.toJSBoolean(any_request_result1_2) or not INLINED() then
		var24 = Observable_upvr.of()
	end
	return var24
end
local invariant_upvr = invariant.invariant
function tbl_upvr.concat_(arg1, arg2) -- Line 142
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: setmetatable_result1_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: Observable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var26_upvr
	if typeof(arg1) == "function" then
		var26_upvr = tbl_upvr.new(arg1)
	else
		var26_upvr = arg1
	end
	local parameter_count, _ = debug.info(var26_upvr.request, 'a')
	if parameter_count > 2 then
		-- KONSTANTWARNING: GOTO [26] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 36 start (CF ANALYSIS FAILED)
	if true then
		invariant_upvr.warn(setmetatable_result1_upvr.new("You are calling concat on a terminating link, which will have no effect", var26_upvr))
		return var26_upvr
	end
	if typeof(arg2) == "function" then
		local _ = tbl_upvr.new(arg2)
	else
	end
	local parameter_count_2, _ = debug.info(arg2.request, 'a')
	if parameter_count_2 > 2 then
	else
	end
	if true then
		return tbl_upvr.new(function(arg1_3, arg2_2) -- Line 153
			--[[ Upvalues[4]:
				[1]: var26_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: Observable_upvr (copied, readonly)
			]]
			local any_request_result1_5 = var26_upvr:request(arg2_2, function(arg1_4) -- Line 154
				--[[ Upvalues[3]:
					[1]: arg2 (copied, readonly)
					[2]: Boolean_upvr (copied, readonly)
					[3]: Observable_upvr (copied, readonly)
				]]
				local any_request_result1 = arg2:request(arg1_4)
				local var35
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var35 = any_request_result1
					return var35
				end
				if not Boolean_upvr.toJSBoolean(any_request_result1) or not INLINED_2() then
					var35 = Observable_upvr.of()
				end
				return var35
			end)
			local var37
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var37 = any_request_result1_5
				return var37
			end
			if not Boolean_upvr.toJSBoolean(any_request_result1_5) or not INLINED_3() then
				var37 = Observable_upvr.of()
			end
			return var37
		end)
	end
	do
		return tbl_upvr.new(function(arg1_5, arg2_3, arg3) -- Line 161
			--[[ Upvalues[4]:
				[1]: var26_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: Observable_upvr (copied, readonly)
			]]
			local any_request_result1_3 = var26_upvr:request(arg2_3, function(arg1_6) -- Line 162
				--[[ Upvalues[4]:
					[1]: arg2 (copied, readonly)
					[2]: arg3 (readonly)
					[3]: Boolean_upvr (copied, readonly)
					[4]: Observable_upvr (copied, readonly)
				]]
				local any_request_result1_4 = arg2:request(arg1_6, arg3)
				local var41
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var41 = any_request_result1_4
					return var41
				end
				if not Boolean_upvr.toJSBoolean(any_request_result1_4) or not INLINED_4() then
					var41 = Observable_upvr.of()
				end
				return var41
			end)
			local var43
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var43 = any_request_result1_3
				return var43
			end
			if not Boolean_upvr.toJSBoolean(any_request_result1_3) or not INLINED_5() then
				var43 = Observable_upvr.of()
			end
			return var43
		end)
	end
	-- KONSTANTERROR: [25] 20. Error Block 36 end (CF ANALYSIS FAILED)
end
function tbl_upvr.new(arg1) -- Line 171
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module_2 = {}
	if Boolean_upvr.toJSBoolean(arg1) then
		module_2.request = arg1
	end
	return setmetatable(module_2, tbl_upvr)
end
function tbl_upvr.split(arg1, arg2, arg3, arg4) -- Line 179
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: passthrough_upvr (readonly)
	]]
	local var45
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var45 = arg4
		return var45
	end
	if not Boolean_upvr.toJSBoolean(arg4) or not INLINED_6() then
		var45 = tbl_upvr.new(passthrough_upvr)
	end
	return arg1:concat(tbl_upvr.split_(arg2, arg3, var45))
end
function tbl_upvr.concat(arg1, arg2) -- Line 189
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr.concat_(arg1, arg2)
end
local InvariantError_upvr = invariant.InvariantError
function tbl_upvr.request(arg1, arg2, arg3) -- Line 193
	--[[ Upvalues[1]:
		[1]: InvariantError_upvr (readonly)
	]]
	error(InvariantError_upvr.new("request is not implemented"))
end
function tbl_upvr.onError(arg1, arg2, arg3) -- Line 197
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg3) and arg3 ~= nil and Boolean_upvr.toJSBoolean(arg3.error) then
		arg3:error(arg2)
		return false
	end
	error(arg2)
end
function tbl_upvr.setOnError(arg1, arg2) -- Line 213
	arg1.onError = arg2
	return arg1
end
module.ApolloLink = tbl_upvr
return module