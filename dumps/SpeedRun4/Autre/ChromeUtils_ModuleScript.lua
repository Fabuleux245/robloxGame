-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:56
-- Luau version 6, Types version 3
-- Time taken: 0.005805 seconds

local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Signal_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local FFlagChromeUsePolicies_upvr = SharedFlags.FFlagChromeUsePolicies
local tbl_upvr_3 = {
	Unavailable = 0;
	Loading = 1;
	Available = 2;
	Pinned = 3;
}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1) -- Line 34
	--[[ Upvalues[4]:
		[1]: tbl_upvr_3 (readonly)
		[2]: FFlagChromeUsePolicies_upvr (readonly)
		[3]: Signal_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	local tbl = {}
	local var8
	if not var8 then
		var8 = tbl_upvr_3.Unavailable
	end
	tbl._state = var8
	if FFlagChromeUsePolicies_upvr then
		var8 = false
	else
		var8 = nil
	end
	tbl._forceUnavailable = var8
	var8 = Signal_upvr.new()
	tbl._changeSignal = var8
	var8 = setmetatable(tbl, tbl_upvr)
	return var8
end
tbl_upvr.new = new
local function connect(arg1, arg2) -- Line 43
	return arg1._changeSignal:connect(arg2)
end
tbl_upvr.connect = connect
local function set(arg1, arg2) -- Line 47
	--[[ Upvalues[1]:
		[1]: FFlagChromeUsePolicies_upvr (readonly)
	]]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		arg1._state = arg2
		return FFlagChromeUsePolicies_upvr
	end
	if arg1._state ~= arg2 and (not INLINED() or not arg1._forceUnavailable) then
		arg1._changeSignal:fire(arg2)
	end
end
tbl_upvr.set = set
local function get(arg1) -- Line 56
	--[[ Upvalues[2]:
		[1]: FFlagChromeUsePolicies_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	if FFlagChromeUsePolicies_upvr and arg1._forceUnavailable then
		return tbl_upvr_3.Unavailable
	end
	return arg1._state
end
tbl_upvr.get = get
function tbl_upvr.available(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	arg1:set(tbl_upvr_3.Available)
end
function tbl_upvr.loading(arg1) -- Line 68
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	arg1:set(tbl_upvr_3.Loading)
end
function tbl_upvr.unavailable(arg1) -- Line 72
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	arg1:set(tbl_upvr_3.Unavailable)
end
function tbl_upvr.pinned(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	arg1:set(tbl_upvr_3.Pinned)
end
function tbl_upvr.forceUnavailable(arg1) -- Line 80
	--[[ Upvalues[2]:
		[1]: FFlagChromeUsePolicies_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	if FFlagChromeUsePolicies_upvr and not arg1._forceUnavailable then
		arg1._forceUnavailable = true
		if arg1._state ~= tbl_upvr_3.Unavailable then
			arg1._changeSignal:fire(tbl_upvr_3.Unavailable)
		end
	end
end
function tbl_upvr.unforceUnavailable(arg1) -- Line 90
	--[[ Upvalues[2]:
		[1]: FFlagChromeUsePolicies_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	if FFlagChromeUsePolicies_upvr and arg1._forceUnavailable then
		arg1._forceUnavailable = false
		if arg1._state ~= tbl_upvr_3.Unavailable then
			arg1._changeSignal:fire(arg1._state)
		end
	end
end
local tbl_upvr_2 = {}
tbl_upvr_2.__index = tbl_upvr_2
local function new(arg1) -- Line 117
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	return setmetatable({
		_value = {
			type = "empty";
			value = nil;
		};
		_changeSignal = Signal_upvr.new();
		_excludeFromTotalCounts = arg1 or false;
	}, tbl_upvr_2)
end
tbl_upvr_2.new = new
function tbl_upvr_2.setExcludeFromTotalCounts(arg1, arg2) -- Line 126
	arg1._excludeFromTotalCounts = arg2
end
function tbl_upvr_2.excludeFromTotalCounts(arg1) -- Line 130
	return arg1._excludeFromTotalCounts
end
local function connect(arg1, arg2) -- Line 134
	return arg1._changeSignal:connect(arg2)
end
tbl_upvr_2.connect = connect
local function get(arg1) -- Line 138
	return arg1._value
end
tbl_upvr_2.get = get
function tbl_upvr_2.clear(arg1) -- Line 142
	if arg1._value and arg1._value.type ~= "empty" then
		arg1._value = {
			type = "empty";
			value = nil;
		}
		arg1._changeSignal:fire(arg1._value)
	end
end
function tbl_upvr_2.fireCount(arg1, arg2) -- Line 149
	local tbl_3 = {
		type = "count";
	}
	tbl_3.value = arg2
	if arg1._value ~= tbl_3 then
		arg1._value = tbl_3
		arg1._changeSignal:fire(arg1._value)
	end
end
function tbl_upvr_2.isEmpty(arg1) -- Line 157
	local _value = arg1._value
	if _value then
		if arg1._value.type ~= "empty" then
			_value = false
		else
			_value = true
		end
	end
	return _value
end
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
local function new(arg1) -- Line 175
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local module = {}
	module._value = arg1
	module._changeSignal = Signal_upvr.new()
	return setmetatable(module, tbl_2_upvr)
end
tbl_2_upvr.new = new
local function get(arg1) -- Line 182
	return arg1._value
end
tbl_2_upvr.get = get
function tbl_2_upvr.setMomentary(arg1, arg2, arg3, arg4) -- Line 186
	if arg1._value ~= arg2 then
		arg1._value = arg2
		arg1._changeSignal:fire(arg2)
	end
	local _momentaryClearThread = arg1._momentaryClearThread
	if _momentaryClearThread then
		task.cancel(_momentaryClearThread)
	end
	arg1._momentaryClearThread = task.delay(arg3, function() -- Line 198
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg4 (readonly)
		]]
		arg1._momentaryClearThread = nil
		arg1.set(arg1, arg4)
	end)
end
function tbl_2_upvr.set(arg1, arg2) -- Line 205
	local _momentaryClearThread_2 = arg1._momentaryClearThread
	if _momentaryClearThread_2 then
		task.cancel(_momentaryClearThread_2)
		arg1._momentaryClearThread = nil
	end
	if arg1._value ~= arg2 then
		arg1._value = arg2
		arg1._changeSignal:fire(arg2)
	end
end
function tbl_2_upvr.signal(arg1) -- Line 218
	return arg1._changeSignal
end
local function connect(arg1, arg2, arg3) -- Line 222
	if arg3 == true then
		arg2(arg1._value)
	end
	return arg1._changeSignal:connect(arg2)
end
tbl_2_upvr.connect = connect
local tbl_upvr_4 = {}
tbl_upvr_4.__index = tbl_upvr_4
function tbl_upvr_4.new(arg1, arg2, arg3) -- Line 254
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	if not arg1 then
		error("No signal provided to MappedSignal")
	end
	if not arg2 then
		error("No fetchMapFunction provided to MappedSignal")
	end
	local module_2 = {}
	module_2._signal = arg1
	module_2._fetchMapFunction = arg2
	module_2._eventReceiver = arg3
	return setmetatable(module_2, tbl_upvr_4)
end
local GetFFlagFixMappedSignalRaceCondition_upvr = SharedFlags.GetFFlagFixMappedSignalRaceCondition
function tbl_upvr_4.connect(arg1, arg2) -- Line 268
	--[[ Upvalues[1]:
		[1]: GetFFlagFixMappedSignalRaceCondition_upvr (readonly)
	]]
	if not arg1._signal then
		warn("MappedSignal: Missing signal")
		return function() -- Line 271
		end
	end
	if GetFFlagFixMappedSignalRaceCondition_upvr() then
		if arg1._eventReceiver then
			arg1._eventReceiver()
		end
		arg2(arg1._fetchMapFunction())
		return arg1._signal:connect(function() -- Line 274
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			if arg1._eventReceiver then
				arg1._eventReceiver()
			end
			arg2(arg1._fetchMapFunction())
		end)
	end
	return arg1._signal:connect(function(...) -- Line 287
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1._eventReceiver then
			arg1._eventReceiver(...)
		end
		arg2(arg1._fetchMapFunction())
	end)
end
function tbl_upvr_4.get(arg1) -- Line 296
	return arg1._fetchMapFunction()
end
local StarterGui_upvr = game:GetService("StarterGui")
function setCoreGuiAvailability(arg1, arg2, arg3) -- Line 300
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	local any_Connect_result1 = StarterGui_upvr.CoreGuiChangedSignal:Connect(function() -- Line 305, Named "updateAvailable"
		--[[ Upvalues[4]:
			[1]: StarterGui_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg1 (readonly)
		]]
		local any_GetCoreGuiEnabled_result1_2 = StarterGui_upvr:GetCoreGuiEnabled(arg2)
		if arg3 then
			arg3(any_GetCoreGuiEnabled_result1_2)
		else
			if any_GetCoreGuiEnabled_result1_2 then
				arg1.availability:available()
				return
			end
			arg1.availability:unavailable()
		end
	end)
	local any_GetCoreGuiEnabled_result1 = StarterGui_upvr:GetCoreGuiEnabled(arg2)
	if arg3 then
		arg3(any_GetCoreGuiEnabled_result1)
		return any_Connect_result1
	end
	if any_GetCoreGuiEnabled_result1 then
		arg1.availability:available()
		return any_Connect_result1
	end
	arg1.availability:unavailable()
	return any_Connect_result1
end
return {
	MappedSignal = tbl_upvr_4;
	AvailabilitySignal = tbl_upvr;
	AvailabilitySignalState = tbl_upvr_3;
	NotifySignal = tbl_upvr_2;
	ObservableValue = tbl_2_upvr;
	setCoreGuiAvailability = setCoreGuiAvailability;
}