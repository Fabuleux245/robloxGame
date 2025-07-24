-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:29
-- Luau version 6, Types version 3
-- Time taken: 0.001804 seconds

local Error_upvr = require(script.Parent.Parent.LuauPolyfill).Error
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new() -- Line 20
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Error_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, tbl_upvr)
	module.aborted = false
	module.reason = Error_upvr.new("Undefined Error")
	module._signal = Instance.new("BindableEvent")
	return module
end
function tbl_upvr.abort(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Error_upvr (readonly)
	]]
	local any_new_result1 = tbl_upvr.new()
	local var5 = arg1
	if not var5 then
		var5 = Error_upvr.new("Signal Aborted")
	end
	any_new_result1.reason = var5
	return any_new_result1
end
function tbl_upvr.timeout(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Error_upvr (readonly)
	]]
	local any_new_result1_2_upvr = tbl_upvr.new()
	any_new_result1_2_upvr.reason = Error_upvr.new("TimeoutError")
	task.delay(arg1 / 1000, function() -- Line 41
		--[[ Upvalues[1]:
			[1]: any_new_result1_2_upvr (readonly)
		]]
		any_new_result1_2_upvr:fire()
	end)
	return any_new_result1_2_upvr
end
function tbl_upvr.throwIfAborted(arg1) -- Line 47
	if arg1.aborted then
		error(arg1.reason)
	end
end
function tbl_upvr.connect(arg1, arg2) -- Line 55
	return arg1._signal.Event:Connect(arg2)
end
function tbl_upvr.fire(arg1) -- Line 60
	arg1.aborted = true
	arg1._signal:Fire()
end
return {
	AbortSignal = tbl_upvr;
}