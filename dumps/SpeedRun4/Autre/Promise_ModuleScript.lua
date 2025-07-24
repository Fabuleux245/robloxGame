-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:40
-- Luau version 6, Types version 3
-- Time taken: 0.008107 seconds

local function pack_upvr(...) -- Line 13, Named "pack"
	return select('#', ...), {...}
end
local function wpcallPacked_upvr(arg1, ...) -- Line 26, Named "wpcallPacked"
	--[[ Upvalues[1]:
		[1]: pack_upvr (readonly)
	]]
	local pack_upvr_result1_4_upvr, pack_result2_upvr = pack_upvr(...)
	local pack_result1_2, pack_upvr_result2_4 = pack_upvr(xpcall(function() -- Line 29
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: pack_result2_upvr (readonly)
			[3]: pack_upvr_result1_4_upvr (readonly)
		]]
		return arg1(unpack(pack_result2_upvr, 1, pack_upvr_result1_4_upvr))
	end, debug.traceback))
	return pack_result1_2, pack_upvr_result2_4
end
local function _(arg1, arg2, arg3) -- Line 49, Named "createAdvancer"
	--[[ Upvalues[1]:
		[1]: wpcallPacked_upvr (readonly)
	]]
	return function(...) -- Line 50
		--[[ Upvalues[4]:
			[1]: wpcallPacked_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		local wpcallPacked_upvr_result1_2, wpcallPacked_upvr_result2_2 = wpcallPacked_upvr(arg1, ...)
		if wpcallPacked_upvr_result2_2[1] then
			arg2(unpack(wpcallPacked_upvr_result2_2, 2, wpcallPacked_upvr_result1_2))
		else
			arg3(unpack(wpcallPacked_upvr_result2_2, 2, wpcallPacked_upvr_result1_2))
		end
	end
end
local function _(arg1) -- Line 62, Named "isEmpty"
	local var10
	if next(arg1) ~= nil then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local function _(arg1) -- Line 66, Named "createSymbol"
	local var11
	if type(arg1) ~= "string" then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "createSymbol requires `name` to be a string.")
	var11 = true
	local newproxy_result1_2 = newproxy(var11)
	var11 = getmetatable(newproxy_result1_2)
	function var11.__tostring() -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return "Symbol(%s)":format(arg1)
	end
	return newproxy_result1_2
end
assert(true, "createSymbol requires `name` to be a string.")
local newproxy_result1 = newproxy(true)
local var16_upvr = "PromiseMarker"
getmetatable(newproxy_result1).__tostring = function() -- Line 71
	--[[ Upvalues[1]:
		[1]: var16_upvr (readonly)
	]]
	return "Symbol(%s)":format(var16_upvr)
end
local var17_upvr = newproxy_result1
local module_upvr = {
	prototype = {};
	__index = module_upvr.prototype;
}
local tbl = {}
var16_upvr = assert
var16_upvr(true, "createSymbol requires `name` to be a string.")
var16_upvr = newproxy(true)
local var20 = var16_upvr
local var22_upvr = "Started"
getmetatable(var20).__tostring = function() -- Line 71
	--[[ Upvalues[1]:
		[1]: var22_upvr (readonly)
	]]
	return "Symbol(%s)":format(var22_upvr)
end
tbl.Started = var20
var20 = assert
var20(true, "createSymbol requires `name` to be a string.")
var20 = newproxy(true)
local var23 = var20
var22_upvr = "Resolved"
getmetatable(var23).__tostring = function() -- Line 71
	--[[ Upvalues[1]:
		[1]: var22_upvr (readonly)
	]]
	return "Symbol(%s)":format(var22_upvr)
end
tbl.Resolved = var23
var23 = assert
var23(true, "createSymbol requires `name` to be a string.")
var23 = newproxy(true)
local var25 = var23
var22_upvr = "Rejected"
getmetatable(var25).__tostring = function() -- Line 71
	--[[ Upvalues[1]:
		[1]: var22_upvr (readonly)
	]]
	return "Symbol(%s)":format(var22_upvr)
end
tbl.Rejected = var25
module_upvr.Status = tbl
function module_upvr.new(arg1) -- Line 114
	--[[ Upvalues[3]:
		[1]: var17_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: wpcallPacked_upvr (readonly)
	]]
	local module_upvr_2 = {
		_source = debug.traceback();
		[var17_upvr] = true;
		_status = module_upvr.Status.Started;
		_values = nil;
		_valuesLength = -1;
		_unhandledRejection = false;
		_queuedResolve = {};
		_queuedReject = {};
	}
	setmetatable(module_upvr_2, module_upvr)
	local function resolve(...) -- Line 142
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:_resolve(...)
	end
	local function reject(...) -- Line 146
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:_reject(...)
	end
	local _, wpcallPacked_upvr_result2 = wpcallPacked_upvr(arg1, resolve, reject)
	if not wpcallPacked_upvr_result2[1] and module_upvr_2._status == module_upvr.Status.Started then
		reject(wpcallPacked_upvr_result2[2])
	end
	return module_upvr_2
end
function module_upvr.resolve(arg1) -- Line 164
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new(function(arg1_2) -- Line 165
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1_2(arg1)
	end)
end
function module_upvr.reject(arg1) -- Line 173
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new(function(arg1_3, arg2) -- Line 174
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg2(arg1)
	end)
end
function module_upvr.all(arg1) -- Line 184
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if type(arg1) ~= "table" then
		error("Please pass a list of promises to Promise.all", 2)
	end
	if #arg1 == 0 then
		return module_upvr.resolve({})
	end
	for i = 1, #arg1 do
		if not module_upvr.is(arg1[i]) then
			error("Non-promise value passed into Promise.all at index #%d":format(i), 2)
		end
	end
	return module_upvr.new(function(arg1_4, arg2) -- Line 202
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2_upvr = {}
		local var37_upvw = 0
		local function resolveOne_upvr(arg1_5, ...) -- Line 211, Named "resolveOne"
			--[[ Upvalues[4]:
				[1]: tbl_2_upvr (readonly)
				[2]: var37_upvw (read and write)
				[3]: arg1 (copied, readonly)
				[4]: arg1_4 (readonly)
			]]
			tbl_2_upvr[arg1_5] = ...
			var37_upvw += 1
			if var37_upvw == #arg1 then
				arg1_4(tbl_2_upvr)
			end
		end
		for i_2_upvr = 1, #arg1 do
			arg1[i_2_upvr]:andThen(function(...) -- Line 224
				--[[ Upvalues[2]:
					[1]: resolveOne_upvr (readonly)
					[2]: i_2_upvr (readonly)
				]]
				resolveOne_upvr(i_2_upvr, ...)
			end, function(...) -- Line 227
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				arg2(...)
			end)
		end
	end)
end
function module_upvr.is(arg1) -- Line 238
	--[[ Upvalues[1]:
		[1]: var17_upvr (readonly)
	]]
	local var40
	if var40 ~= "table" then
		var40 = false
		return var40
	end
	if arg1[var17_upvr] ~= true then
		var40 = false
	else
		var40 = true
	end
	return var40
end
module_upvr.prototype.getStatus = function(arg1) -- Line 246, Named "getStatus"
	return arg1._status
end
module_upvr.prototype.andThen = function(arg1, arg2, arg3) -- Line 255, Named "andThen"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: wpcallPacked_upvr (readonly)
	]]
	arg1._unhandledRejection = false
	return module_upvr.new(function(arg1_6, arg2_2) -- Line 259
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: wpcallPacked_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg1 (readonly)
			[5]: module_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var43
		if arg2 then
			function var43(...) -- Line 50
				--[[ Upvalues[4]:
					[1]: wpcallPacked_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: arg1_6 (readonly)
					[4]: arg2_2 (readonly)
				]]
				local wpcallPacked_upvr_result1, wpcallPacked_upvr_result2_4 = wpcallPacked_upvr(arg2, ...)
				if wpcallPacked_upvr_result2_4[1] then
					arg1_6(unpack(wpcallPacked_upvr_result2_4, 2, wpcallPacked_upvr_result1))
				else
					arg2_2(unpack(wpcallPacked_upvr_result2_4, 2, wpcallPacked_upvr_result1))
				end
			end
		end
		if arg3 then
			local function var46(...) -- Line 50
				--[[ Upvalues[4]:
					[1]: wpcallPacked_upvr (copied, readonly)
					[2]: arg3 (readonly)
					[3]: arg1_6 (readonly)
					[4]: arg2_2 (readonly)
				]]
				local wpcallPacked_result1, wpcallPacked_upvr_result2_3 = wpcallPacked_upvr(arg3, ...)
				if wpcallPacked_upvr_result2_3[1] then
					arg1_6(unpack(wpcallPacked_upvr_result2_3, 2, wpcallPacked_result1))
				else
					arg2_2(unpack(wpcallPacked_upvr_result2_3, 2, wpcallPacked_result1))
				end
			end
		end
		if arg1._status == module_upvr.Status.Started then
			table.insert(arg1._queuedResolve, var43)
			table.insert(arg1._queuedReject, var46)
		else
			if arg1._status == module_upvr.Status.Resolved then
				var43(unpack(arg1._values, 1, arg1._valuesLength))
				return
			end
			if arg1._status == module_upvr.Status.Rejected then
				var46(unpack(arg1._values, 1, arg1._valuesLength))
			end
		end
	end)
end
module_upvr.prototype.catch = function(arg1, arg2) -- Line 290, Named "catch"
	return arg1:andThen(nil, arg2)
end
module_upvr.prototype.await = function(arg1) -- Line 299, Named "await"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: pack_upvr (readonly)
	]]
	arg1._unhandledRejection = false
	if arg1._status == module_upvr.Status.Started then
		local var49_upvw
		local var50_upvw
		local BindableEvent_upvr = Instance.new("BindableEvent")
		arg1:andThen(function(...) -- Line 308
			--[[ Upvalues[4]:
				[1]: var50_upvw (read and write)
				[2]: var49_upvw (read and write)
				[3]: pack_upvr (copied, readonly)
				[4]: BindableEvent_upvr (readonly)
			]]
			local pack_upvr_result1, pack_upvr_result2_2 = pack_upvr(...)
			var50_upvw = pack_upvr_result1
			var49_upvw = pack_upvr_result2_2
			BindableEvent_upvr:Fire(true)
		end, function(...) -- Line 312
			--[[ Upvalues[4]:
				[1]: var50_upvw (read and write)
				[2]: var49_upvw (read and write)
				[3]: pack_upvr (copied, readonly)
				[4]: BindableEvent_upvr (readonly)
			]]
			local pack_upvr_result1_3, pack_upvr_result2_5 = pack_upvr(...)
			var50_upvw = pack_upvr_result1_3
			var49_upvw = pack_upvr_result2_5
			BindableEvent_upvr:Fire(false)
		end)
		BindableEvent_upvr:Destroy()
		return BindableEvent_upvr.Event:Wait(), unpack(var49_upvw, 1, var50_upvw)
	end
	if arg1._status == module_upvr.Status.Resolved then
		return true, unpack(arg1._values, 1, arg1._valuesLength)
	end
	if arg1._status == module_upvr.Status.Rejected then
		return false, unpack(arg1._values, 1, arg1._valuesLength)
	end
	error("Promise had an invalid status.")
end
module_upvr.prototype._unwrap = function(arg1) -- Line 338, Named "_unwrap"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var58
	if var58 == module_upvr.Status.Started then
		var58 = error
		var58("Promise has not resolved or rejected.", 2)
	end
	if arg1._status ~= module_upvr.Status.Resolved then
		var58 = false
	else
		var58 = true
	end
	return var58, unpack(arg1._values, 1, arg1._valuesLength)
end
module_upvr.prototype._resolve = function(arg1, ...) -- Line 348, Named "_resolve"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: pack_upvr (readonly)
	]]
	if arg1._status ~= module_upvr.Status.Started then
	else
		if module_upvr.is(...) then
			if 1 < select('#', ...) then
				warn("When returning a Promise from andThen, extra arguments are ".."discarded! See:\n\n%s":format(arg1._source))
			end
			...:andThen(function(...) -- Line 367
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:_resolve(...)
			end, function(...) -- Line 370
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:_reject(...)
			end)
			return
		end
		arg1._status = module_upvr.Status.Resolved
		local pack_result1, pack_upvr_result2_3 = pack_upvr(...)
		arg1._valuesLength = pack_result1
		arg1._values = pack_upvr_result2_3
		for _, v in ipairs(arg1._queuedResolve) do
			v(...)
		end
	end
end
module_upvr.prototype._reject = function(arg1, ...) -- Line 387, Named "_reject"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: pack_upvr (readonly)
	]]
	if arg1._status ~= module_upvr.Status.Started then
	else
		arg1._status = module_upvr.Status.Rejected
		local pack_upvr_result1_2, pack_upvr_result2 = pack_upvr(...)
		arg1._valuesLength = pack_upvr_result1_2
		arg1._values = pack_upvr_result2
		if next(arg1._queuedReject) ~= nil then
			pack_upvr_result1_2 = false
		else
			pack_upvr_result1_2 = true
		end
		if not pack_upvr_result1_2 then
			for _, v_2 in ipairs(arg1._queuedReject) do
				v_2(...)
			end
			return
		end
		arg1._unhandledRejection = true
		local tostring_result1_upvr = tostring(...)
		spawn(function() -- Line 410
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tostring_result1_upvr (readonly)
			]]
			if not arg1._unhandledRejection then
			else
				warn("Unhandled promise rejection:\n\n%s\n\n%s":format(tostring_result1_upvr, arg1._source))
			end
		end)
	end
end
return module_upvr