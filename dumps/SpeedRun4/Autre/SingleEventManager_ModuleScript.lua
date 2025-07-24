-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:36
-- Luau version 6, Types version 3
-- Time taken: 0.002578 seconds

local tbl_upvr = {
	Disabled = "Disabled";
	Suspended = "Suspended";
	Enabled = "Enabled";
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		_suspendedEventQueue = {};
		_connections = {};
		_listeners = {};
		_status = tbl_upvr.Disabled;
		_isResuming = false;
	}
	module._instance = arg1
	return setmetatable(module, module_upvr)
end
function module_upvr.connectEvent(arg1, arg2, arg3) -- Line 77
	arg1:_connect(arg2, arg1._instance[arg2], arg3)
end
function module_upvr.connectPropertyChange(arg1, arg2, arg3) -- Line 81
	local pcall_result1, pcall_result2 = pcall(arg1._instance.GetPropertyChangedSignal, arg1._instance, arg2)
	if not pcall_result1 then
		error(string.format("Cannot get changed signal on property %q: %s", tostring(arg2), pcall_result2), 0)
	end
	arg1:_connect("Change."..arg2, pcall_result2, arg3)
end
function module_upvr._connect(arg1, arg2, arg3, arg4) -- Line 99
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg4 == nil then
		if arg1._connections[arg2] ~= nil then
			arg1._connections[arg2]:Disconnect()
			arg1._connections[arg2] = nil
		end
		arg1._listeners[arg2] = nil
	else
		if arg1._connections[arg2] == nil then
			arg1._connections[arg2] = arg3:Connect(function(...) -- Line 110
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: tbl_upvr (copied, readonly)
					[3]: arg2 (readonly)
				]]
				if arg1._status == tbl_upvr.Enabled then
					arg1._listeners[arg2](arg1._instance, ...)
				elseif arg1._status == tbl_upvr.Suspended then
					local tbl = {}
					tbl[1] = arg2
					tbl[2] = select('#', ...)
					tbl[3] = ...
					table.insert(arg1._suspendedEventQueue, tbl)
				end
			end)
		end
		arg1._listeners[arg2] = arg4
	end
end
function module_upvr.suspend(arg1) -- Line 130
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1._status = tbl_upvr.Suspended
end
local console_upvr = require(script.Parent.Parent.Parent.Parent.Shared).console
function module_upvr.resume(arg1) -- Line 134
	--[[ Upvalues[2]:
		[1]: console_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg1._isResuming then
	else
		arg1._isResuming = true
		for _, v in arg1._suspendedEventQueue do
			local var16 = arg1._listeners[v[1]]
			if var16 ~= nil then
				local coroutine_resume_result1_2, coroutine_resume_result2_2 = coroutine.resume(coroutine.create(var16), arg1._instance, unpack(v, 3, 2 + v[2]))
				if not coroutine_resume_result1_2 then
					console_upvr.warn("%s", coroutine_resume_result2_2)
				end
			end
		end
		arg1._isResuming = false
		arg1._status = tbl_upvr.Enabled
		table.clear(arg1._suspendedEventQueue)
	end
end
return module_upvr