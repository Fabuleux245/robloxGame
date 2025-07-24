-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:55
-- Luau version 6, Types version 3
-- Time taken: 0.006682 seconds

local var1_upvw = 5
local tbl_4_upvr = {
	Mode = table.freeze({
		Spawned = 1;
		Deferred = 2;
		DeferredCombined = 3;
		Sequential = 4;
		SequentialQueue = 5;
		HeadOnly = 6;
	});
}
local var4_upvw
local function RunThread_upvr(arg1, ...) -- Line 78, Named "RunThread"
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	arg1(...)
	var4_upvw = coroutine.running()
end
local function FreeThreadHandler_upvr() -- Line 84, Named "FreeThreadHandler"
	--[[ Upvalues[1]:
		[1]: RunThread_upvr (readonly)
	]]
	while true do
		RunThread_upvr(coroutine.yield())
	end
end
local function ProcessCallback_upvr(arg1, ...) -- Line 90, Named "ProcessCallback"
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: FreeThreadHandler_upvr (readonly)
	]]
	local var5
	if var4_upvw then
		var5 = var4_upvw
		var4_upvw = nil
	else
		var5 = task.spawn(FreeThreadHandler_upvr)
	end
	task.spawn(var5, arg1, ...)
end
local tbl_upvr_3 = {
	Connected = false;
	_Callback = function() -- Line 109, Named "_Callback"
	end;
}
tbl_upvr_3.__index = tbl_upvr_3
local setmetatable_result1_6_upvr = setmetatable({}, {
	__mode = "kv";
})
local function _(arg1, arg2) -- Line 115, Named "CreateConnection"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: setmetatable_result1_6_upvr (readonly)
	]]
	local tbl = {}
	tbl._Callback = arg2
	tbl._Next = arg1._ListHead
	tbl.Connected = true
	local setmetatable_result1 = setmetatable(tbl, tbl_upvr_3)
	setmetatable_result1_6_upvr[setmetatable_result1] = arg1
	arg1._ListHead = setmetatable_result1
	return setmetatable_result1
end
function tbl_upvr_3.Disconnect(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: setmetatable_result1_6_upvr (readonly)
	]]
	local var11 = setmetatable_result1_6_upvr[arg1]
	if var11 then
		setmetatable_result1_6_upvr[arg1] = nil
		local var12
		if var12 == arg1 then
			var12 = arg1._Next
			var11._ListHead = var12
		else
			var12 = var11._ListHead
			while var12 and var12 ~= arg1 do
				var12 = var12._Next
			end
			if var12 then
				var12._Next = arg1._Next
			end
		end
	end
	arg1.Connected = false
	arg1._Callback = nil
end
local tbl_upvr = {
	Mode = tbl_4_upvr.Mode.Deferred;
	CopyTables = false;
}
tbl_upvr.__index = tbl_upvr
local tbl_2_upvr = {}
local function _(arg1) -- Line 168, Named "LogEntry"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if var1_upvw < arg1._Entries then
		arg1._Entries = 0
		error(string.format("Signal_%s exceeded maximum reentry depth (%i).", tostring(arg1.DebugName or arg1), var1_upvw))
	end
	arg1._Entries += 1
end
local function EntrySetMaxReentryDepth_upvr(arg1, arg2) -- Line 180, Named "SafeDeepCopy"
	--[[ Upvalues[1]:
		[1]: EntrySetMaxReentryDepth_upvr (readonly)
	]]
	if arg2[arg1] then
		return arg1
	end
	local module_2 = {}
	for i, v in pairs(arg1) do
		if type(i) == "table" then
			i = EntrySetMaxReentryDepth_upvr(i, arg2)
		end
		if type(v) == "table" then
			v = EntrySetMaxReentryDepth_upvr(v, arg2)
		end
		module_2[i] = v
	end
	return module_2
end
local tbl_upvr_2 = {
	[true] = function(...) -- Line 201
		--[[ Upvalues[1]:
			[1]: EntrySetMaxReentryDepth_upvr (readonly)
		]]
		local packed = table.pack(...)
		for i_2, v_2 in pairs(packed) do
			if type(v_2) == "table" then
				packed[i_2] = EntrySetMaxReentryDepth_upvr(v_2, {})
			end
		end
		return table.unpack(packed, 1, packed.n)
	end;
	[false] = function(...) -- Line 212
		return ...
	end;
}
local function FireSpawned_upvr(arg1, arg2, ...) -- Line 217, Named "FireSpawned"
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: ProcessCallback_upvr (readonly)
	]]
	if var1_upvw < arg1._Entries then
		arg1._Entries = 0
		error(string.format("Signal_%s exceeded maximum reentry depth (%i).", tostring(arg1.DebugName or arg1), var1_upvw))
	end
	arg1._Entries += 1
	local _ListHead_3 = arg1._ListHead
	while _ListHead_3 do
		ProcessCallback_upvr(_ListHead_3._Callback, arg2(...))
	end
	arg1._Entries = 0
end
tbl_2_upvr[tbl_4_upvr.Mode.Spawned] = function(arg1, ...) -- Line 241
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: FireSpawned_upvr (readonly)
	]]
	FireSpawned_upvr(arg1, tbl_upvr_2[arg1.CopyTables], ...)
end
local function FireDeferred_upvr(arg1, ...) -- Line 254, Named "FireDeferred"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: FireSpawned_upvr (readonly)
	]]
	local var32 = tbl_upvr_2[arg1.CopyTables]
	return task.defer(FireSpawned_upvr, arg1, var32, var32(...))
end
tbl_2_upvr[tbl_4_upvr.Mode.Deferred] = FireDeferred_upvr
local setmetatable_result1_2_upvr = setmetatable({}, {
	__mode = 'k';
})
tbl_2_upvr[tbl_4_upvr.Mode.DeferredCombined] = function(arg1, ...) -- Line 262
	--[[ Upvalues[2]:
		[1]: setmetatable_result1_2_upvr (readonly)
		[2]: FireDeferred_upvr (readonly)
	]]
	local var36 = setmetatable_result1_2_upvr[arg1]
	if var36 and coroutine.status(var36) == "suspended" then
		task.cancel(var36)
	end
	setmetatable_result1_2_upvr[arg1] = FireDeferred_upvr(arg1, ...)
end
tbl_2_upvr[tbl_4_upvr.Mode.Sequential] = function(arg1, ...) -- Line 271
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if var1_upvw < arg1._Entries then
		arg1._Entries = 0
		error(string.format("Signal_%s exceeded maximum reentry depth (%i).", tostring(arg1.DebugName or arg1), var1_upvw))
	end
	arg1._Entries += 1
	local _ListHead_2 = arg1._ListHead
	while _ListHead_2 do
		_ListHead_2._Callback(...)
	end
	arg1._Entries = 0
end
tbl_2_upvr[tbl_4_upvr.Mode.SequentialQueue] = function(arg1, ...) -- Line 283
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if var1_upvw < arg1._Entries then
		arg1._Entries = 0
		error(string.format("Signal_%s exceeded maximum reentry depth (%i).", tostring(arg1.DebugName or arg1), var1_upvw))
	end
	arg1._Entries += 1
	local tbl_5 = {}
	local _ListHead = arg1._ListHead
	while _ListHead do
		tbl_5[#tbl_5 + 1] = _ListHead
	end
	for i_3 = #tbl_5, 1, -1 do
		local var43 = tbl_5[i_3]
		if var43.Connected then
			var43._Callback(...)
		end
	end
	arg1._Entries = 0
end
tbl_2_upvr[tbl_4_upvr.Mode.HeadOnly] = function(arg1, ...) -- Line 307
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if var1_upvw < arg1._Entries then
		arg1._Entries = 0
		error(string.format("Signal_%s exceeded maximum reentry depth (%i).", tostring(arg1.DebugName or arg1), var1_upvw))
	end
	arg1._Entries += 1
	local _ListHead_4 = arg1._ListHead
	if _ListHead_4 then
		task.spawn(_ListHead_4._Callback, ...)
	end
	arg1._Entries = 0
end
local function ValidateMode_upvr(arg1) -- Line 319, Named "ValidateMode"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
	local var46
	if type(arg1) ~= "number" then
		var46 = typeof(arg1)
		error("Signal: Invalid Mode type. Expected \"number,\" receveied \""..var46..".\"", 3)
	end
	local pairs_result1, pairs_result2_2, pairs_result3 = pairs(tbl_4_upvr.Mode)
	-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 26. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 26. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 23. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 23. Error Block 4 end (CF ANALYSIS FAILED)
end
function EntrySetMaxReentryDepth_upvr(arg1, arg2) -- Line 336, Named "new"
	--[[ Upvalues[2]:
		[1]: ValidateMode_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg1 ~= nil then
		ValidateMode_upvr(arg1)
	end
	local module = {}
	local var51 = 0
	module._Entries = var51
	module.Mode = arg1
	if arg2 ~= true then
		var51 = false
	else
		var51 = true
	end
	module.CopyTables = var51
	return setmetatable(module, tbl_upvr)
end
tbl_4_upvr.new = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1, arg2) -- Line 350, Named "Connect"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: setmetatable_result1_6_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3._Callback = arg2
	tbl_3._Next = arg1._ListHead
	tbl_3.Connected = true
	local setmetatable_result1_4 = setmetatable(tbl_3, tbl_upvr_3)
	setmetatable_result1_6_upvr[setmetatable_result1_4] = arg1
	arg1._ListHead = setmetatable_result1_4
	return setmetatable_result1_4
end
tbl_upvr.Connect = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1, arg2) -- Line 364, Named "Once"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: setmetatable_result1_6_upvr (readonly)
	]]
	local var54_upvw
	local setmetatable_result1_5 = setmetatable({
		_Callback = function(...) -- Line 370, Named "WrappedCallback"
			--[[ Upvalues[2]:
				[1]: var54_upvw (read and write)
				[2]: arg2 (readonly)
			]]
			var54_upvw:Disconnect()
			arg2(...)
		end;
		_Next = arg1._ListHead;
		Connected = true;
	}, tbl_upvr_3)
	setmetatable_result1_6_upvr[setmetatable_result1_5] = arg1
	arg1._ListHead = setmetatable_result1_5
	var54_upvw = setmetatable_result1_5
	return var54_upvw
end
tbl_upvr.Once = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1, arg2) -- Line 379, Named "Wait"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: setmetatable_result1_6_upvr (readonly)
	]]
	local var57_upvw
	local current_thread_upvr = coroutine.running()
	local setmetatable_result1_3 = setmetatable({
		_Callback = function(...) -- Line 386, Named "ResumeThread"
			--[[ Upvalues[2]:
				[1]: var57_upvw (read and write)
				[2]: current_thread_upvr (readonly)
			]]
			var57_upvw:Disconnect()
			if coroutine.status(current_thread_upvr) == "suspended" then
				task.spawn(current_thread_upvr, ...)
			end
		end;
		_Next = arg1._ListHead;
		Connected = true;
	}, tbl_upvr_3)
	setmetatable_result1_6_upvr[setmetatable_result1_3] = arg1
	arg1._ListHead = setmetatable_result1_3
	var57_upvw = setmetatable_result1_3
	return coroutine.yield()
end
tbl_upvr.Wait = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1, ...) -- Line 397, Named "Fire"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr[arg1.Mode](arg1, ...)
end
tbl_upvr.Fire = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1) -- Line 405, Named "HasConnections"
	local var61
	if arg1._ListHead == nil then
		var61 = false
	else
		var61 = true
	end
	return var61
end
tbl_upvr.HasConnections = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1) -- Line 410, Named "DisconnectAll"
	-- KONSTANTERROR: [8] 7. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [8.1]
	if nil then
		-- KONSTANTWARNING: GOTO [8] #7
	end
	-- KONSTANTERROR: [0] 1. Error Block 8 end (CF ANALYSIS FAILED)
end
tbl_upvr.DisconnectAll = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr() -- Line 425, Named "DefaultModeGet"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr.Mode
end
tbl_4_upvr.DefaultModeGet = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1) -- Line 429, Named "DefaultModeSet"
	--[[ Upvalues[2]:
		[1]: ValidateMode_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	ValidateMode_upvr(arg1)
	tbl_upvr.Mode = arg1
end
tbl_4_upvr.DefaultModeSet = EntrySetMaxReentryDepth_upvr
function EntrySetMaxReentryDepth_upvr(arg1) -- Line 438, Named "EntrySetMaxReentryDepth"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if type(arg1) ~= "number" or arg1 < 0 then
		error("Depth must be a positive number.", 2)
	end
	var1_upvw = arg1
end
tbl_4_upvr.EntrySetMaxReentryDepth = EntrySetMaxReentryDepth_upvr
EntrySetMaxReentryDepth_upvr = table.freeze
tbl_upvr_2 = tbl_4_upvr
EntrySetMaxReentryDepth_upvr = EntrySetMaxReentryDepth_upvr(tbl_upvr_2)
return EntrySetMaxReentryDepth_upvr