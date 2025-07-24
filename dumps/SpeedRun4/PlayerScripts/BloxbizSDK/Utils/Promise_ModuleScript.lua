-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:34
-- Luau version 6, Types version 3
-- Time taken: 0.039854 seconds

local tbl_6_upvr = {
	__mode = 'k';
}
local function _(arg1) -- Line 10, Named "isCallable"
	if type(arg1) == "function" then
		return true
	end
	if type(arg1) == "table" then
		local getmetatable_result1_11 = getmetatable(arg1)
		if getmetatable_result1_11 and type(rawget(getmetatable_result1_11, "__call")) == "function" then
			return true
		end
	end
	return false
end
local function makeEnum(arg1, arg2) -- Line 28
	local module_7 = {}
	for _, v in ipairs(arg2) do
		module_7[v] = v
	end
	return setmetatable(module_7, {
		__index = function(arg1_2, arg2_2) -- Line 36, Named "__index"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			error(string.format("%s is not in %s!", arg2_2, arg1), 2)
		end;
		__newindex = function() -- Line 39, Named "__newindex"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			error(string.format("Creating new members in %s is not allowed!", arg1), 2)
		end;
	})
end
local var15_upvw = {
	Kind = makeEnum("Promise.Error.Kind", {"ExecutionError", "AlreadyCancelled", "NotResolvedInTime", "TimedOut"});
}
var15_upvw.__index = var15_upvw
local function new(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	local var16 = arg1
	if not var16 then
		var16 = {}
	end
	local var17 = var16
	local module_8 = {
		error = tostring(var17.error) or "[This error has no error text.]";
		trace = var17.trace;
		context = var17.context;
		kind = var17.kind;
	}
	module_8.parent = arg2
	module_8.createdTick = os.clock()
	module_8.createdTrace = debug.traceback()
	return setmetatable(module_8, var15_upvw)
end
var15_upvw.new = new
local function is(arg1) -- Line 77
	if type(arg1) == "table" then
		local getmetatable_result1_3 = getmetatable(arg1)
		if type(getmetatable_result1_3) == "table" then
			local var22 = false
			if rawget(arg1, "error") ~= nil then
				if type(rawget(getmetatable_result1_3, "extend")) ~= "function" then
					var22 = false
				else
					var22 = true
				end
			end
			return var22
		end
	end
	return false
end
var15_upvw.is = is
function var15_upvw.isKind(arg1, arg2) -- Line 89
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	if arg2 == nil then
	else
	end
	assert(true, "Argument #2 to Promise.Error.isKind must not be nil")
	if var15_upvw.is(arg1) then
		if arg1.kind ~= arg2 then
		else
		end
	end
	return true
end
function var15_upvw.extend(arg1, arg2) -- Line 95
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	local var23 = arg2
	if not var23 then
		var23 = {}
	end
	local var24 = var23
	var23 = var24.kind
	local var25 = var23
	if not var25 then
		var25 = arg1.kind
	end
	var24.kind = var25
	return var15_upvw.new(var24, arg1)
end
function var15_upvw.getErrorChain(arg1) -- Line 103
	local module_2 = {}
	module_2[1] = arg1
	while module_2[#module_2].parent do
		table.insert(module_2, module_2[#module_2].parent)
	end
	return module_2
end
local function __tostring(arg1) -- Line 113
	local module_10 = {string.format("-- Promise.Error(%s) --", arg1.kind or '?')}
	for _, v_2 in ipairs(arg1:getErrorChain()) do
		local tbl = {}
		local trace = v_2.trace
		if not trace then
			trace = v_2.error
		end
		tbl[1] = trace
		tbl[2] = v_2.context
		table.insert(module_10, table.concat(tbl, '\n'))
	end
	return table.concat(module_10, '\n')
end
var15_upvw.__tostring = __tostring
local function pack_upvr(...) -- Line 137, Named "pack"
	return select('#', ...), {...}
end
local function packResult_upvr(arg1, ...) -- Line 144, Named "packResult"
	return arg1, select('#', ...), {...}
end
local function _(arg1) -- Line 148, Named "makeErrorHandler"
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	if arg1 == nil then
	else
	end
	assert(true, "traceback is nil")
	return function(arg1_3) -- Line 151
		--[[ Upvalues[2]:
			[1]: var15_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		if type(arg1_3) == "table" then
			return arg1_3
		end
		local module_11 = {}
		module_11.error = arg1_3
		module_11.kind = var15_upvw.Kind.ExecutionError
		module_11.trace = debug.traceback(tostring(arg1_3), 2)
		module_11.context = "Promise created at:\n\n"..arg1
		return var15_upvw.new(module_11)
	end
end
local function runExecutor_upvr(arg1, arg2, ...) -- Line 171, Named "runExecutor"
	--[[ Upvalues[2]:
		[1]: packResult_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	local var41
	if arg1 == nil then
		var41 = false
	else
		var41 = true
	end
	assert(var41, "traceback is nil")
	return packResult_upvr(xpcall(arg2, function(arg1_4) -- Line 151
		--[[ Upvalues[2]:
			[1]: var15_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		if type(arg1_4) == "table" then
			return arg1_4
		end
		local module_3 = {}
		module_3.error = arg1_4
		module_3.kind = var15_upvw.Kind.ExecutionError
		module_3.trace = debug.traceback(tostring(arg1_4), 2)
		module_3.context = "Promise created at:\n\n"..arg1
		return var15_upvw.new(module_3)
	end, ...))
end
local function _(arg1, arg2, arg3, arg4) -- Line 179, Named "createAdvancer"
	--[[ Upvalues[1]:
		[1]: runExecutor_upvr (readonly)
	]]
	return function(...) -- Line 180
		--[[ Upvalues[5]:
			[1]: runExecutor_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
		]]
		local runExecutor_upvr_result1_4, runExecutor_upvr_result2, runExecutor_upvr_result3 = runExecutor_upvr(arg1, arg2, ...)
		if runExecutor_upvr_result1_4 then
			arg3(unpack(runExecutor_upvr_result3, 1, runExecutor_upvr_result2))
		else
			arg4(runExecutor_upvr_result3[1])
		end
	end
end
local function _(arg1) -- Line 191, Named "isEmpty"
	local var48
	if next(arg1) ~= nil then
		var48 = false
	else
		var48 = true
	end
	return var48
end
local module_4_upvr = {
	Error = var15_upvw;
	Status = makeEnum("Promise.Status", {"Started", "Resolved", "Rejected", "Cancelled"});
	_getTime = os.clock;
	_timeEvent = game:GetService("RunService").Heartbeat;
	_unhandledRejectionCallbacks = {};
	prototype = {};
	__index = module_4_upvr.prototype;
}
function module_4_upvr._new(arg1, arg2, arg3) -- Line 230
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: runExecutor_upvr (readonly)
	]]
	if arg3 ~= nil and not module_4_upvr.is(arg3) then
		error("Argument #2 to Promise.new must be a promise or nil", 2)
	end
	local module_5_upvr = {
		_thread = nil;
	}
	module_5_upvr._source = arg1
	module_5_upvr._status = module_4_upvr.Status.Started
	module_5_upvr._values = nil
	module_5_upvr._valuesLength = -1
	module_5_upvr._unhandledRejection = true
	module_5_upvr._queuedResolve = {}
	module_5_upvr._queuedReject = {}
	module_5_upvr._queuedFinally = {}
	module_5_upvr._cancellationHook = nil
	module_5_upvr._parent = arg3
	module_5_upvr._consumers = setmetatable({}, tbl_6_upvr)
	if arg3 and arg3._status == module_4_upvr.Status.Started then
		arg3._consumers[module_5_upvr] = true
	end
	setmetatable(module_5_upvr, module_4_upvr)
	local function resolve(...) -- Line 278
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		module_5_upvr:_resolve(...)
	end
	local function reject(...) -- Line 282
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		module_5_upvr:_reject(...)
	end
	local function onCancel_upvr(arg1_5) -- Line 286, Named "onCancel"
		--[[ Upvalues[2]:
			[1]: module_5_upvr (readonly)
			[2]: module_4_upvr (copied, readonly)
		]]
		if arg1_5 then
			if module_5_upvr._status == module_4_upvr.Status.Cancelled then
				arg1_5()
			else
				module_5_upvr._cancellationHook = arg1_5
			end
		end
		if module_5_upvr._status ~= module_4_upvr.Status.Cancelled then
		else
		end
		return true
	end
	module_5_upvr._thread = coroutine.create(function() -- Line 298
		--[[ Upvalues[6]:
			[1]: runExecutor_upvr (copied, readonly)
			[2]: module_5_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: resolve (readonly)
			[5]: reject (readonly)
			[6]: onCancel_upvr (readonly)
		]]
		local runExecutor_result1, _, runExecutor_upvr_result3_5 = runExecutor_upvr(module_5_upvr._source, arg2, resolve, reject, onCancel_upvr)
		if not runExecutor_result1 then
			reject(runExecutor_upvr_result3_5[1])
		end
	end)
	task.spawn(module_5_upvr._thread)
	return module_5_upvr
end
function module_4_upvr.new(arg1) -- Line 349
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	return module_4_upvr._new(debug.traceback(nil, 2), arg1)
end
function module_4_upvr.__tostring(arg1) -- Line 353
	return string.format("Promise(%s)", arg1._status)
end
function module_4_upvr.defer(arg1) -- Line 375
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: runExecutor_upvr (readonly)
	]]
	local call_stack_3_upvr = debug.traceback(nil, 2)
	return module_4_upvr._new(call_stack_3_upvr, function(arg1_6, arg2, arg3) -- Line 378
		--[[ Upvalues[4]:
			[1]: module_4_upvr (copied, readonly)
			[2]: runExecutor_upvr (copied, readonly)
			[3]: call_stack_3_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local var59_upvw
		var59_upvw = module_4_upvr._timeEvent:Connect(function() -- Line 380
			--[[ Upvalues[7]:
				[1]: var59_upvw (read and write)
				[2]: runExecutor_upvr (copied, readonly)
				[3]: call_stack_3_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: arg1_6 (readonly)
				[6]: arg2 (readonly)
				[7]: arg3 (readonly)
			]]
			var59_upvw:Disconnect()
			local runExecutor_upvr_result1, _, runExecutor_upvr_result3_2 = runExecutor_upvr(call_stack_3_upvr, arg1, arg1_6, arg2, arg3)
			if not runExecutor_upvr_result1 then
				arg2(runExecutor_upvr_result3_2[1])
			end
		end)
	end)
end
module_4_upvr.async = module_4_upvr.defer
function module_4_upvr.resolve(...) -- Line 418
	--[[ Upvalues[2]:
		[1]: pack_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local pack_result1_upvr_3, pack_result2_upvr = pack_upvr(...)
	return module_4_upvr._new(debug.traceback(nil, 2), function(arg1) -- Line 420
		--[[ Upvalues[2]:
			[1]: pack_result2_upvr (readonly)
			[2]: pack_result1_upvr_3 (readonly)
		]]
		arg1(unpack(pack_result2_upvr, 1, pack_result1_upvr_3))
	end)
end
function module_4_upvr.reject(...) -- Line 435
	--[[ Upvalues[2]:
		[1]: pack_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local pack_result1_3_upvr, pack_result2_3_upvr = pack_upvr(...)
	return module_4_upvr._new(debug.traceback(nil, 2), function(arg1, arg2) -- Line 437
		--[[ Upvalues[2]:
			[1]: pack_result2_3_upvr (readonly)
			[2]: pack_result1_3_upvr (readonly)
		]]
		arg2(unpack(pack_result2_3_upvr, 1, pack_result1_3_upvr))
	end)
end
function module_4_upvr._try(arg1, arg2, ...) -- Line 446
	--[[ Upvalues[2]:
		[1]: pack_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local pack_result1_2_upvr, pack_result2_4_upvr = pack_upvr(...)
	return module_4_upvr._new(arg1, function(arg1_7) -- Line 449
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: pack_result2_4_upvr (readonly)
			[3]: pack_result1_2_upvr (readonly)
		]]
		arg1_7(arg2(unpack(pack_result2_4_upvr, 1, pack_result1_2_upvr)))
	end)
end
function module_4_upvr.try(arg1, ...) -- Line 477
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	return module_4_upvr._try(debug.traceback(nil, 2), arg1, ...)
end
function module_4_upvr._all(arg1, arg2, arg3) -- Line 486
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if type(arg2) ~= "table" then
		error(string.format("Please pass a list of promises to %s", "Promise.all"), 3)
	end
	for i_3, v_3 in pairs(arg2) do
		if not module_4_upvr.is(v_3) then
			error(string.format("Non-promise value passed into %s at index %s", "Promise.all", tostring(i_3)), 3)
		end
	end
	if #arg2 == 0 or arg3 == 0 then
		return module_4_upvr.resolve({})
	end
	return module_4_upvr._new(arg1, function(arg1_8, arg2_3, arg3_2) -- Line 504
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
		]]
		local tbl_7_upvr = {}
		local var87_upvw = 0
		local var88_upvw = false
		local function cancel() -- Line 515
			--[[ Upvalues[1]:
				[1]: tbl_7_upvr (readonly)
			]]
			for _, v_4 in ipairs(tbl_7_upvr) do
				v_4:cancel()
			end
		end
		local var94_upvw = 0
		local tbl_5_upvr = {}
		local function resolveOne(arg1_9, ...) -- Line 522
			--[[ Upvalues[7]:
				[1]: var88_upvw (read and write)
				[2]: var94_upvw (read and write)
				[3]: arg3 (copied, readonly)
				[4]: tbl_5_upvr (readonly)
				[5]: arg2 (copied, readonly)
				[6]: arg1_8 (readonly)
				[7]: tbl_7_upvr (readonly)
			]]
			if var88_upvw then
			else
				var94_upvw += 1
				if arg3 == nil then
					tbl_5_upvr[arg1_9] = ...
				else
					tbl_5_upvr[var94_upvw] = ...
				end
				local var100 = arg3
				if not var100 then
					var100 = #arg2
				end
				if var100 <= var94_upvw then
					var88_upvw = true
					arg1_8(tbl_5_upvr)
					for _, v_16 in ipairs(tbl_7_upvr) do
						v_16:cancel()
					end
				end
			end
		end
		arg3_2(cancel)
		for i_5_upvr, v_5 in ipairs(arg2) do
			tbl_7_upvr[i_5_upvr] = v_5:andThen(function(...) -- Line 547
				--[[ Upvalues[2]:
					[1]: resolveOne (readonly)
					[2]: i_5_upvr (readonly)
				]]
				resolveOne(i_5_upvr, ...)
			end, function(...) -- Line 549
				--[[ Upvalues[6]:
					[1]: var87_upvw (read and write)
					[2]: arg3 (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: tbl_7_upvr (readonly)
					[5]: var88_upvw (read and write)
					[6]: arg2_3 (readonly)
				]]
				var87_upvw += 1
				if arg3 == nil or #arg2 - var87_upvw < arg3 then
					for _, v_6 in ipairs(tbl_7_upvr) do
						v_6:cancel()
					end
					var88_upvw = true
					arg2_3(...)
				end
			end)
		end
		if var88_upvw then
			for _, v_7 in ipairs(tbl_7_upvr) do
				v_7:cancel()
			end
		end
	end)
end
function module_4_upvr.all(arg1) -- Line 591
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	return module_4_upvr._all(debug.traceback(nil, 2), arg1)
end
function module_4_upvr.fold(arg1, arg2, arg3) -- Line 620
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var123
	if type(arg1) ~= "table" then
		var123 = false
	else
		var123 = true
	end
	assert(var123, "Bad argument #1 to Promise.fold: must be a table")
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_4_upvr.some(arg1, arg2) -- Line 653
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var124
	if type(arg2) ~= "number" then
		var124 = false
	else
		var124 = true
	end
	assert(var124, "Bad argument #2 to Promise.some: must be a number")
	var124 = module_4_upvr
	var124 = debug.traceback(nil, 2)
	return var124._all(var124, arg1, arg2)
end
function module_4_upvr.any(arg1) -- Line 677
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	return module_4_upvr._all(debug.traceback(nil, 2), arg1, 1):andThen(function(arg1_12) -- Line 678
		return arg1_12[1]
	end)
end
function module_4_upvr.allSettled(arg1) -- Line 699
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if type(arg1) ~= "table" then
		error(string.format("Please pass a list of promises to %s", "Promise.allSettled"), 2)
	end
	for i_8, v_8 in pairs(arg1) do
		if not module_4_upvr.is(v_8) then
			error(string.format("Non-promise value passed into %s at index %s", "Promise.allSettled", tostring(i_8)), 2)
		end
	end
	if #arg1 == 0 then
		return module_4_upvr.resolve({})
	end
	return module_4_upvr._new(debug.traceback(nil, 2), function(arg1_13, arg2, arg3) -- Line 717
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_upvr_2 = {}
		local var137_upvw = 0
		local tbl_upvr = {}
		local function resolveOne_upvr(arg1_14, ...) -- Line 727, Named "resolveOne"
			--[[ Upvalues[4]:
				[1]: var137_upvw (read and write)
				[2]: tbl_upvr (readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg1_13 (readonly)
			]]
			var137_upvw += 1
			tbl_upvr[arg1_14] = ...
			if #arg1 <= var137_upvw then
				arg1_13(tbl_upvr)
			end
		end
		arg3(function() -- Line 737
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			for _, v_9 in ipairs(tbl_upvr_2) do
				v_9:cancel()
			end
		end)
		for i_10_upvr, v_10 in ipairs(arg1) do
			tbl_upvr_2[i_10_upvr] = v_10:finally(function(...) -- Line 746
				--[[ Upvalues[2]:
					[1]: resolveOne_upvr (readonly)
					[2]: i_10_upvr (readonly)
				]]
				resolveOne_upvr(i_10_upvr, ...)
			end)
		end
	end)
end
function module_4_upvr.race(arg1) -- Line 777
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var153
	if type(arg1) ~= "table" then
		var153 = false
	else
		var153 = true
	end
	assert(var153, string.format("Please pass a list of promises to %s", "Promise.race"))
	var153 = arg1
	local pairs_result1, pairs_result2, pairs_result3_3 = pairs(var153)
	for i_11, v_11 in pairs_result1, pairs_result2, pairs_result3_3 do
		assert(module_4_upvr.is(v_11), string.format("Non-promise value passed into %s at index %s", "Promise.race", tostring(i_11)))
	end
	pairs_result2 = module_4_upvr
	pairs_result2 = debug.traceback(nil, 2)
	return pairs_result2._new(pairs_result2, function(arg1_15, arg2, arg3) -- Line 784
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_8_upvr = {}
		local var167_upvw = false
		local function cancel() -- Line 788
			--[[ Upvalues[1]:
				[1]: tbl_8_upvr (readonly)
			]]
			for _, v_12 in ipairs(tbl_8_upvr) do
				v_12:cancel()
			end
		end
		local function _(arg1_16) -- Line 794, Named "finalize"
			--[[ Upvalues[2]:
				[1]: tbl_8_upvr (readonly)
				[2]: var167_upvw (read and write)
			]]
			return function(...) -- Line 795
				--[[ Upvalues[3]:
					[1]: tbl_8_upvr (copied, readonly)
					[2]: var167_upvw (copied, read and write)
					[3]: arg1_16 (readonly)
				]]
				for _, v_13 in ipairs(tbl_8_upvr) do
					v_13:cancel()
				end
				var167_upvw = true
				return arg1_16(...)
			end
		end
		if arg3(function(...) -- Line 795
			--[[ Upvalues[3]:
				[1]: tbl_8_upvr (readonly)
				[2]: var167_upvw (read and write)
				[3]: arg2 (readonly)
			]]
			for _, v_14 in ipairs(tbl_8_upvr) do
				v_14:cancel()
			end
			var167_upvw = true
			return arg2(...)
		end) then
		else
			for i_17, v_17 in ipairs(arg1) do
				tbl_8_upvr[i_17] = v_17:andThen(function(...) -- Line 795
					--[[ Upvalues[3]:
						[1]: tbl_8_upvr (readonly)
						[2]: var167_upvw (read and write)
						[3]: arg1_15 (readonly)
					]]
					for _, v_18 in ipairs(tbl_8_upvr) do
						v_18:cancel()
					end
					var167_upvw = true
					return arg1_15(...)
				end, function(...) -- Line 795
					--[[ Upvalues[3]:
						[1]: tbl_8_upvr (readonly)
						[2]: var167_upvw (read and write)
						[3]: arg2 (readonly)
					]]
					for _, v_19 in ipairs(tbl_8_upvr) do
						v_19:cancel()
					end
					var167_upvw = true
					return arg2(...)
				end)
			end
			if var167_upvw then
				for _, v_20 in ipairs(tbl_8_upvr) do
					v_20:cancel()
				end
			end
		end
	end)
end
function module_4_upvr.each(arg1, arg2) -- Line 872
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var310
	if type(arg1) ~= "table" then
		var310 = false
	else
		var310 = true
	end
	assert(var310, string.format("Please pass a list of promises to %s", "Promise.each"))
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 22. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 22. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_4_upvr.is(arg1) -- Line 971
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_4_upvr.promisify(arg1) -- Line 1020
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	return function(...) -- Line 1021
		--[[ Upvalues[2]:
			[1]: module_4_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return module_4_upvr._try(debug.traceback(nil, 2), arg1, ...)
	end
end
local var312_upvw
local var313_upvw
function module_4_upvr.delay(arg1) -- Line 1051
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: var312_upvw (read and write)
		[3]: var313_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var314
	if type(arg1) ~= "number" then
		var314 = false
	else
		var314 = true
	end
	assert(var314, "Bad argument #1 to Promise.delay, must be a number.")
	if (1/60) > arg1 or arg1 == math.huge then
	end
	var314 = module_4_upvr
	var314 = debug.traceback(nil, 2)
	local const_number_upvw = (1/60)
	return var314._new(var314, function(arg1_18, arg2, arg3) -- Line 1059
		--[[ Upvalues[4]:
			[1]: module_4_upvr (copied, readonly)
			[2]: const_number_upvw (read and write)
			[3]: var312_upvw (copied, read and write)
			[4]: var313_upvw (copied, read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		local any__getTime_result1 = module_4_upvr._getTime()
		local var318 = any__getTime_result1 + const_number_upvw
		local tbl_11_upvr = {}
		tbl_11_upvr.resolve = arg1_18
		tbl_11_upvr.startTime = any__getTime_result1
		tbl_11_upvr.endTime = var318
		if var312_upvw == nil then
			var313_upvw = tbl_11_upvr
			var312_upvw = module_4_upvr._timeEvent:Connect(function() -- Line 1071
				--[[ Upvalues[3]:
					[1]: module_4_upvr (copied, readonly)
					[2]: var313_upvw (copied, read and write)
					[3]: var312_upvw (copied, read and write)
				]]
				while var313_upvw ~= nil and var313_upvw.endTime < module_4_upvr._getTime() do
					local var321 = var313_upvw
					var313_upvw = var321.next
					if var313_upvw == nil then
						var312_upvw:Disconnect()
						var312_upvw = nil
					else
						var313_upvw.previous = nil
					end
					var321.resolve(module_4_upvr._getTime() - var321.startTime)
				end
			end)
		else
			local var322
			if var313_upvw.endTime < var318 then
				local next_3 = var313_upvw.next
				while next_3 ~= nil and next_3.endTime < var318 do
					local var324 = next_3
					local next = var324.next
				end
				var324.next = tbl_11_upvr
				tbl_11_upvr.previous = var324
				if next ~= nil then
					tbl_11_upvr.next = next
					next.previous = tbl_11_upvr
					-- KONSTANTWARNING: GOTO [65] #45
				end
			else
				tbl_11_upvr.next = var313_upvw
				var313_upvw.previous = tbl_11_upvr
				var313_upvw = tbl_11_upvr
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [65] 45. Error Block 14 start (CF ANALYSIS FAILED)
		arg3(function() -- Line 1116
			--[[ Upvalues[3]:
				[1]: tbl_11_upvr (readonly)
				[2]: var313_upvw (copied, read and write)
				[3]: var312_upvw (copied, read and write)
			]]
			local next_2 = tbl_11_upvr.next
			if var313_upvw == tbl_11_upvr then
				if next_2 == nil then
					var312_upvw:Disconnect()
					var312_upvw = nil
				else
					next_2.previous = nil
				end
				var313_upvw = next_2
			else
				local previous = tbl_11_upvr.previous
				previous.next = next_2
				if next_2 ~= nil then
					next_2.previous = previous
				end
			end
		end)
		-- KONSTANTERROR: [65] 45. Error Block 14 end (CF ANALYSIS FAILED)
	end)
end
module_4_upvr.prototype.timeout = function(arg1, arg2, arg3) -- Line 1180, Named "timeout"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	local module_6 = {}
	local call_stack_2_upvr = debug.traceback(nil, 2)
	module_6[1] = module_4_upvr.delay(arg2):andThen(function() -- Line 1184
		--[[ Upvalues[5]:
			[1]: module_4_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: var15_upvw (copied, read and write)
			[4]: arg2 (readonly)
			[5]: call_stack_2_upvr (readonly)
		]]
		local var332
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var332 = var332(tbl_3)
			tbl_3.context = string.format("Timeout of %d seconds exceeded.\n:timeout() called at:\n\n%s", arg2, call_stack_2_upvr)
			tbl_3.error = "Timed out"
			tbl_3.kind = var15_upvw.Kind.TimedOut
			local tbl_3 = {}
			var332 = var15_upvw.new
			return var332
		end
		if arg3 ~= nil or not INLINED() then
			var332 = arg3
		end
		return module_4_upvr.reject(var332)
	end)
	module_6[2] = arg1
	return module_4_upvr.race(module_6)
end
module_4_upvr.prototype.getStatus = function(arg1) -- Line 1204, Named "getStatus"
	return arg1._status
end
module_4_upvr.prototype._andThen = function(arg1, arg2, arg3, arg4) -- Line 1213, Named "_andThen"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: runExecutor_upvr (readonly)
	]]
	arg1._unhandledRejection = false
	if arg1._status == module_4_upvr.Status.Cancelled then
		local any_new_result1 = module_4_upvr.new(function() -- Line 1218
		end)
		any_new_result1:cancel()
		return any_new_result1
	end
	return module_4_upvr._new(arg2, function(arg1_19, arg2_6, arg3_3) -- Line 1225
		--[[ Upvalues[6]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: runExecutor_upvr (copied, readonly)
			[4]: arg4 (readonly)
			[5]: arg1 (readonly)
			[6]: module_4_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var342_upvw
		if var342_upvw then
			var342_upvw = arg2
			local function var338_upvw(...) -- Line 180
				--[[ Upvalues[5]:
					[1]: runExecutor_upvr (copied, readonly)
					[2]: var342_upvw (readonly)
					[3]: arg3 (readonly)
					[4]: arg1_19 (readonly)
					[5]: arg2_6 (readonly)
				]]
				local runExecutor_upvr_result1_2, runExecutor_result2, runExecutor_upvr_result3_4 = runExecutor_upvr(var342_upvw, arg3, ...)
				if runExecutor_upvr_result1_2 then
					arg1_19(unpack(runExecutor_upvr_result3_4, 1, runExecutor_result2))
				else
					arg2_6(runExecutor_upvr_result3_4[1])
				end
			end
		end
		var342_upvw = arg2_6
		if arg4 then
			function var342_upvw(...) -- Line 180
				--[[ Upvalues[5]:
					[1]: runExecutor_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: arg4 (readonly)
					[4]: arg1_19 (readonly)
					[5]: arg2_6 (readonly)
				]]
				local runExecutor_upvr_result1_3, runExecutor_upvr_result2_2, runExecutor_upvr_result3_3 = runExecutor_upvr(arg2, arg4, ...)
				if runExecutor_upvr_result1_3 then
					arg1_19(unpack(runExecutor_upvr_result3_3, 1, runExecutor_upvr_result2_2))
				else
					arg2_6(runExecutor_upvr_result3_3[1])
				end
			end
		end
		if arg1._status == module_4_upvr.Status.Started then
			table.insert(arg1._queuedResolve, var338_upvw)
			table.insert(arg1._queuedReject, var342_upvw)
			local function var346() -- Line 1244
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: module_4_upvr (copied, readonly)
					[3]: var338_upvw (read and write)
					[4]: var342_upvw (read and write)
				]]
				if arg1._status == module_4_upvr.Status.Started then
					table.remove(arg1._queuedResolve, table.find(arg1._queuedResolve, var338_upvw))
					table.remove(arg1._queuedReject, table.find(arg1._queuedReject, var342_upvw))
				end
			end
			arg3_3(var346)
		else
			var346 = arg1
			var346 = module_4_upvr.Status.Resolved
			if var346._status == var346 then
				var346 = unpack(arg1._values, 1, arg1._valuesLength)
				var338_upvw(var346)
			else
				var346 = arg1
				var346 = module_4_upvr.Status.Rejected
				if var346._status == var346 then
					var346 = unpack(arg1._values, 1, arg1._valuesLength)
					var342_upvw(var346)
				end
			end
		end
	end, arg1)
end
module_4_upvr.prototype.andThen = function(arg1, arg2, arg3) -- Line 1283, Named "andThen"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 27 start (CF ANALYSIS FAILED)
	local getmetatable_result1_5 = getmetatable(arg2)
	local var351
	if getmetatable_result1_5 and type(rawget(getmetatable_result1_5, "__call")) == "function" then
		var351 = true
	else
		-- KONSTANTERROR: [40] 31. Error Block 9 start (CF ANALYSIS FAILED)
		var351 = false
		-- KONSTANTERROR: [40] 31. Error Block 9 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [19] 15. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 32. Error Block 24 start (CF ANALYSIS FAILED)
	assert(var351, string.format("Please pass a handler function to %s!", "Promise:andThen"))
	var351 = true
	-- KONSTANTERROR: [41] 32. Error Block 24 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.catch = function(arg1, arg2) -- Line 1310, Named "catch"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 14 start (CF ANALYSIS FAILED)
	local getmetatable_result1_8 = getmetatable(arg2)
	local var353
	if getmetatable_result1_8 and type(rawget(getmetatable_result1_8, "__call")) == "function" then
		var353 = true
	else
		-- KONSTANTERROR: [40] 31. Error Block 9 start (CF ANALYSIS FAILED)
		var353 = false
		-- KONSTANTERROR: [40] 31. Error Block 9 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [19] 15. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 32. Error Block 12 start (CF ANALYSIS FAILED)
	assert(var353, string.format("Please pass a handler function to %s!", "Promise:catch"))
	do
		return arg1:_andThen(debug.traceback(nil, 2), nil, arg2)
	end
	-- KONSTANTERROR: [41] 32. Error Block 12 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.tap = function(arg1, arg2) -- Line 1331, Named "tap"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: pack_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 12 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.andThenCall = function(arg1, arg2, ...) -- Line 1366, Named "andThenCall"
	--[[ Upvalues[1]:
		[1]: pack_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 12 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.andThenReturn = function(arg1, ...) -- Line 1396, Named "andThenReturn"
	--[[ Upvalues[1]:
		[1]: pack_upvr (readonly)
	]]
	local pack_result1_4_upvr, pack_result2_5_upvr = pack_upvr(...)
	return arg1:_andThen(debug.traceback(nil, 2), function() -- Line 1398
		--[[ Upvalues[2]:
			[1]: pack_result2_5_upvr (readonly)
			[2]: pack_result1_4_upvr (readonly)
		]]
		return unpack(pack_result2_5_upvr, 1, pack_result1_4_upvr)
	end)
end
module_4_upvr.prototype.cancel = function(arg1) -- Line 1414, Named "cancel"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if arg1._status ~= module_4_upvr.Status.Started then
	else
		arg1._status = module_4_upvr.Status.Cancelled
		if arg1._cancellationHook then
			arg1._cancellationHook()
		end
		coroutine.close(arg1._thread)
		if arg1._parent then
			arg1._parent:_consumerCancelled(arg1)
		end
		for i_21 in pairs(arg1._consumers) do
			i_21:cancel()
		end
		arg1:_finalize()
	end
end
module_4_upvr.prototype._consumerCancelled = function(arg1, arg2) -- Line 1442, Named "_consumerCancelled"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if arg1._status ~= module_4_upvr.Status.Started then
	else
		arg1._consumers[arg2] = nil
		if next(arg1._consumers) == nil then
			arg1:cancel()
		end
	end
end
module_4_upvr.prototype._finally = function(arg1, arg2, arg3) -- Line 1458, Named "_finally"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	arg1._unhandledRejection = false
	return module_4_upvr._new(arg2, function(arg1_20, arg2_7, arg3_4) -- Line 1461
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: module_4_upvr (copied, readonly)
		]]
		local var367_upvw
		arg3_4(function() -- Line 1464
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: var367_upvw (read and write)
			]]
			arg1:_consumerCancelled(arg1)
			if var367_upvw then
				var367_upvw:cancel()
			end
		end)
		local var370
		if arg3 then
			function var370(...) -- Line 1477
				--[[ Upvalues[6]:
					[1]: arg3 (copied, readonly)
					[2]: module_4_upvr (copied, readonly)
					[3]: var367_upvw (read and write)
					[4]: arg1_20 (readonly)
					[5]: arg1 (copied, readonly)
					[6]: arg2_7 (readonly)
				]]
				local arg3_result1 = arg3(...)
				if module_4_upvr.is(arg3_result1) then
					var367_upvw = arg3_result1
					arg3_result1:finally(function(arg1_21) -- Line 1484
						--[[ Upvalues[3]:
							[1]: module_4_upvr (copied, readonly)
							[2]: arg1_20 (copied, readonly)
							[3]: arg1 (copied, readonly)
						]]
						if arg1_21 ~= module_4_upvr.Status.Rejected then
							arg1_20(arg1)
						end
					end):catch(function(...) -- Line 1489
						--[[ Upvalues[1]:
							[1]: arg2_7 (copied, readonly)
						]]
						arg2_7(...)
					end)
				else
					arg1_20(arg1)
				end
			end
		end
		if arg1._status == module_4_upvr.Status.Started then
			table.insert(arg1._queuedFinally, var370)
		else
			var370(arg1._status)
		end
	end)
end
module_4_upvr.prototype.finally = function(arg1, arg2) -- Line 1559, Named "finally"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 14 start (CF ANALYSIS FAILED)
	local getmetatable_result1_12 = getmetatable(arg2)
	local var375
	if getmetatable_result1_12 and type(rawget(getmetatable_result1_12, "__call")) == "function" then
		var375 = true
	else
		-- KONSTANTERROR: [40] 31. Error Block 9 start (CF ANALYSIS FAILED)
		var375 = false
		-- KONSTANTERROR: [40] 31. Error Block 9 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [19] 15. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 32. Error Block 12 start (CF ANALYSIS FAILED)
	assert(var375, string.format("Please pass a handler function to %s!", "Promise:finally"))
	do
		return arg1:_finally(debug.traceback(nil, 2), arg2)
	end
	-- KONSTANTERROR: [41] 32. Error Block 12 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.finallyCall = function(arg1, arg2, ...) -- Line 1573, Named "finallyCall"
	--[[ Upvalues[1]:
		[1]: pack_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 12 end (CF ANALYSIS FAILED)
end
module_4_upvr.prototype.finallyReturn = function(arg1, ...) -- Line 1599, Named "finallyReturn"
	--[[ Upvalues[1]:
		[1]: pack_upvr (readonly)
	]]
	local pack_result1_upvr, pack_result2_6_upvr = pack_upvr(...)
	return arg1:_finally(debug.traceback(nil, 2), function() -- Line 1601
		--[[ Upvalues[2]:
			[1]: pack_result2_6_upvr (readonly)
			[2]: pack_result1_upvr (readonly)
		]]
		return unpack(pack_result2_6_upvr, 1, pack_result1_upvr)
	end)
end
module_4_upvr.prototype.awaitStatus = function(arg1) -- Line 1613, Named "awaitStatus"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	arg1._unhandledRejection = false
	if arg1._status == module_4_upvr.Status.Started then
		local current_thread_upvr = coroutine.running()
		arg1:finally(function() -- Line 1620
			--[[ Upvalues[1]:
				[1]: current_thread_upvr (readonly)
			]]
			task.spawn(current_thread_upvr)
		end):catch(function() -- Line 1626
		end)
		coroutine.yield()
	end
	current_thread_upvr = arg1._status
	if current_thread_upvr == module_4_upvr.Status.Resolved then
		current_thread_upvr = arg1._status
		return current_thread_upvr, unpack(arg1._values, 1, arg1._valuesLength)
	end
	current_thread_upvr = arg1._status
	if current_thread_upvr == module_4_upvr.Status.Rejected then
		current_thread_upvr = arg1._status
		return current_thread_upvr, unpack(arg1._values, 1, arg1._valuesLength)
	end
	current_thread_upvr = arg1._status
	return current_thread_upvr
end
local function awaitHelper_upvr(arg1, ...) -- Line 1641, Named "awaitHelper"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var382
	if arg1 ~= module_4_upvr.Status.Resolved then
		var382 = false
	else
		var382 = true
	end
	return var382, ...
end
module_4_upvr.prototype.await = function(arg1) -- Line 1666, Named "await"
	--[[ Upvalues[1]:
		[1]: awaitHelper_upvr (readonly)
	]]
	return awaitHelper_upvr(arg1:awaitStatus())
end
local function expectHelper_upvr(arg1, ...) -- Line 1670, Named "expectHelper"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local Status = module_4_upvr.Status
	if arg1 ~= Status.Resolved then
		if ... == nil then
			Status = "Expected Promise rejected with no value."
		else
			Status = ...
		end
		error(Status, 3)
	end
	return ...
end
module_4_upvr.prototype.expect = function(arg1) -- Line 1703, Named "expect"
	--[[ Upvalues[1]:
		[1]: expectHelper_upvr (readonly)
	]]
	return expectHelper_upvr(arg1:awaitStatus())
end
module_4_upvr.prototype.awaitValue = module_4_upvr.prototype.expect
module_4_upvr.prototype._unwrap = function(arg1) -- Line 1717, Named "_unwrap"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var384
	if var384 == module_4_upvr.Status.Started then
		var384 = error
		var384("Promise has not resolved or rejected.", 2)
	end
	if arg1._status ~= module_4_upvr.Status.Resolved then
		var384 = false
	else
		var384 = true
	end
	return var384, unpack(arg1._values, 1, arg1._valuesLength)
end
module_4_upvr.prototype._resolve = function(arg1, ...) -- Line 1727, Named "_resolve"
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: var15_upvw (read and write)
		[3]: pack_upvr (readonly)
	]]
	if arg1._status ~= module_4_upvr.Status.Started then
		if module_4_upvr.is(...) then
			...:_consumerCancelled(arg1)
		end
	else
		if module_4_upvr.is(...) then
			if 1 < select('#', ...) then
				warn(string.format("When returning a Promise from andThen, extra arguments are ".."discarded! See:\n\n%s", arg1._source))
			end
			local var387_upvr = ...
			local any_andThen_result1_2 = var387_upvr:andThen(function(...) -- Line 1748
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:_resolve(...)
			end, function(...) -- Line 1750
				--[[ Upvalues[3]:
					[1]: var387_upvr (readonly)
					[2]: var15_upvw (copied, read and write)
					[3]: arg1 (readonly)
				]]
				local _1 = var387_upvr._values[1]
				if var387_upvr._error then
					_1 = var15_upvw.new({
						error = var387_upvr._error;
						kind = var15_upvw.Kind.ExecutionError;
						context = "[No stack trace available as this Promise originated from an older version of the Promise library (< v2)]";
					})
				end
				if var15_upvw.isKind(_1, var15_upvw.Kind.ExecutionError) then
					return arg1:_reject(_1:extend({
						error = "This Promise was chained to a Promise that errored.";
						trace = "";
						context = string.format("The Promise at:\n\n%s\n...Rejected because it was chained to the following Promise, which encountered an error:\n", arg1._source);
					}))
				end
				arg1:_reject(...)
			end)
			if any_andThen_result1_2._status == module_4_upvr.Status.Cancelled then
				arg1:cancel()
			elseif any_andThen_result1_2._status == module_4_upvr.Status.Started then
				arg1._parent = any_andThen_result1_2
				any_andThen_result1_2._consumers[arg1] = true
			end
		end
		var387_upvr = module_4_upvr.Status.Resolved
		arg1._status = var387_upvr
		var387_upvr = pack_upvr(...)
		local pack_result1_5, pack_result2 = pack_upvr(...)
		arg1._valuesLength = pack_result1_5
		arg1._values = pack_result2
		pack_result1_5 = ipairs(arg1._queuedResolve)
		local ipairs_result1_10, ipairs_result2_3, ipairs_result3_7 = ipairs(arg1._queuedResolve)
		for _, v_21 in ipairs_result1_10, ipairs_result2_3, ipairs_result3_7 do
			coroutine.wrap(v_21)(...)
		end
		ipairs_result1_10 = arg1:_finalize
		ipairs_result1_10()
	end
end
module_4_upvr.prototype._reject = function(arg1, ...) -- Line 1798, Named "_reject"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: pack_upvr (readonly)
	]]
	if arg1._status ~= module_4_upvr.Status.Started then
	else
		arg1._status = module_4_upvr.Status.Rejected
		local pack_result1, pack_upvr_result2 = pack_upvr(...)
		arg1._valuesLength = pack_result1
		arg1._values = pack_upvr_result2
		if next(arg1._queuedReject) ~= nil then
			pack_result1 = false
		else
			pack_result1 = true
		end
		if not pack_result1 then
			for _, v_22 in ipairs(arg1._queuedReject) do
				coroutine.wrap(v_22)(...)
			end
		else
			local tostring_result1_upvr = tostring(...)
			coroutine.wrap(function() -- Line 1820
				--[[ Upvalues[3]:
					[1]: module_4_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: tostring_result1_upvr (readonly)
				]]
				module_4_upvr._timeEvent:Wait()
				if not arg1._unhandledRejection then
				else
					for _, v_23 in ipairs(module_4_upvr._unhandledRejectionCallbacks) do
						task.spawn(v_23, arg1, unpack(arg1._values, 1, arg1._valuesLength))
					end
					if module_4_upvr.TEST then return end
					warn(string.format("Unhandled Promise rejection:\n\n%s\n\n%s", tostring_result1_upvr, arg1._source))
				end
			end)()
		end
		tostring_result1_upvr = arg1:_finalize
		tostring_result1_upvr()
	end
end
module_4_upvr.prototype._finalize = function(arg1) -- Line 1852, Named "_finalize"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	for _, v_15 in ipairs(arg1._queuedFinally) do
		coroutine.wrap(v_15)(arg1._status)
	end
	arg1._queuedFinally = nil
	arg1._queuedReject = nil
	arg1._queuedResolve = nil
	if not module_4_upvr.TEST then
		arg1._parent = nil
		arg1._consumers = nil
	end
	task.defer(coroutine.close, arg1._thread)
end
module_4_upvr.prototype.now = function(arg1, arg2) -- Line 1889, Named "now"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	local call_stack = debug.traceback(nil, 2)
	local var421
	if arg1._status == var421 then
		return arg1:_andThen(call_stack, function(...) -- Line 1892
			return ...
		end)
	end
	var421 = module_4_upvr
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var421 = var421(tbl_4)
		tbl_4.context = ":now() was called at:\n\n"..call_stack
		tbl_4.error = "This Promise was not resolved in time for :now()"
		tbl_4.kind = var15_upvw.Kind.NotResolvedInTime
		local tbl_4 = {}
		var421 = var15_upvw.new
		return var421
	end
	if arg2 ~= nil or not INLINED_2() then
		var421 = arg2
	end
	return var421.reject(var421)
end
function module_4_upvr.retry(arg1, arg2, ...) -- Line 1934
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 17 end (CF ANALYSIS FAILED)
end
function module_4_upvr.retryWithDelay(arg1, arg2, arg3, ...) -- Line 1962
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_4_upvr.fromEvent(arg1, arg2) -- Line 2004
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var425_upvw = arg2
	if not var425_upvw then
		function var425_upvw() -- Line 2005
			return true
		end
	end
	return module_4_upvr._new(debug.traceback(nil, 2), function(arg1_22, arg2_8, arg3) -- Line 2009
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var425_upvw (read and write)
		]]
		local var427_upvw
		local var428_upvw = false
		local function disconnect() -- Line 2013
			--[[ Upvalues[1]:
				[1]: var427_upvw (read and write)
			]]
			var427_upvw:Disconnect()
			var427_upvw = nil
		end
		var427_upvw = arg1:Connect(function(...) -- Line 2022
			--[[ Upvalues[4]:
				[1]: var425_upvw (copied, read and write)
				[2]: arg1_22 (readonly)
				[3]: var427_upvw (read and write)
				[4]: var428_upvw (read and write)
			]]
			local var425_result1 = var425_upvw(...)
			if var425_result1 == true then
				arg1_22(...)
				if var427_upvw then
					var427_upvw:Disconnect()
					var427_upvw = nil
				else
					var428_upvw = true
				end
			end
			if type(var425_result1) ~= "boolean" then
				error("Promise.fromEvent predicate should always return a boolean")
			end
		end)
		if var428_upvw then
			if var427_upvw then
				return disconnect()
			end
		end
		arg3(disconnect)
	end)
end
function module_4_upvr.onUnhandledRejection(arg1) -- Line 2056
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	table.insert(module_4_upvr._unhandledRejectionCallbacks, arg1)
	return function() -- Line 2059
		--[[ Upvalues[2]:
			[1]: module_4_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local table_find_result1 = table.find(module_4_upvr._unhandledRejectionCallbacks, arg1)
		if table_find_result1 then
			table.remove(module_4_upvr._unhandledRejectionCallbacks, table_find_result1)
		end
	end
end
return module_4_upvr