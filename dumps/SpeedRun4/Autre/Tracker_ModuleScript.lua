-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:46
-- Luau version 6, Types version 3
-- Time taken: 0.000941 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 16
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		trackers = {};
	}, module_upvr)
end
function module_upvr.toggle(arg1, arg2) -- Line 24
	arg1[arg2] = not arg1[arg2]
	return arg1[arg2]
end
function module_upvr.set(arg1, arg2, arg3) -- Line 29
	arg1.trackers[arg2] = arg3
end
function module_upvr.get(arg1, arg2) -- Line 33
	return arg1.trackers[arg2]
end
function module_upvr.reset(arg1, arg2) -- Line 37
	arg1.trackers[arg2] = nil
end
function module_upvr.startTime(arg1, arg2) -- Line 41
	arg1.trackers[arg2] = DateTime.now().UnixTimestampMillis
end
function module_upvr.finishTime(arg1, arg2) -- Line 45
	if arg1.trackers[arg2] then
		arg1.trackers[arg2] = 0
		return DateTime.now().UnixTimestampMillis - arg1.trackers[arg2]
	end
	return 0
end
return module_upvr