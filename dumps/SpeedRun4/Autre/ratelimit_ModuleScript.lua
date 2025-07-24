-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:37
-- Luau version 6, Types version 3
-- Time taken: 0.002443 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local function _(arg1) -- Line 13, Named "log"
	return arg1
end
if not module_upvr.ratelimit then
	module_upvr.ratelimit = {}
end
function module_upvr.get(arg1, arg2, arg3) -- Line 22
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	if not module_upvr.ratelimit[arg1] then
		module_upvr.ratelimit[arg1] = {}
		module_upvr.ratelimit[arg1].windows = {}
	end
	module_upvr.ratelimit[arg1].window_size = arg3
	module_upvr.ratelimit[arg1].rate = arg2
	setmetatable_result1.id = arg1
	setmetatable_result1.window_size = module_upvr.ratelimit[arg1].window_size
	setmetatable_result1.rate = module_upvr.ratelimit[arg1].rate
	return setmetatable_result1
end
function module_upvr.window(arg1) -- Line 44
	return math.floor(tick() / arg1.window_size)
end
function module_upvr.progress(arg1) -- Line 48
	return tick() % arg1.window_size / arg1.window_size
end
function module_upvr.increment(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_window_result1_2 = arg1:window()
	if not module_upvr.ratelimit[arg1.id].windows[any_window_result1_2] then
		module_upvr.ratelimit[arg1.id].windows[any_window_result1_2] = 0
	end
	module_upvr.ratelimit[arg1.id].windows[any_window_result1_2] = module_upvr.ratelimit[arg1.id].windows[any_window_result1_2] + 1
	return module_upvr.ratelimit[arg1.id].windows[any_window_result1_2]
end
function module_upvr.weighted(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_progress_result1 = arg1:progress()
	local any_window_result1 = arg1:window()
	return ((module_upvr.ratelimit[arg1.id].windows[any_window_result1] or 0) + (arg2 or 0)) * any_progress_result1 + (module_upvr.ratelimit[arg1.id].windows[any_window_result1 - 1] or 0) * (1 - any_progress_result1)
end
function module_upvr.consumption(arg1) -- Line 84
	return arg1:weighted() / arg1.rate
end
function module_upvr.request(arg1) -- Line 90
	if arg1.rate < arg1:weighted(1) then
		return false
	end
	arg1:increment()
	return true
end
return module_upvr