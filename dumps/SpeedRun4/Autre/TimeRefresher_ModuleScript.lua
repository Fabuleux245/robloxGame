-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:03
-- Luau version 6, Types version 3
-- Time taken: 0.000898 seconds

local Achievements = script:FindFirstAncestor("Achievements")
local LuauPolyfill = require(Achievements.Parent.LuauPolyfill)
local module = {
	init = function(arg1, arg2, arg3) -- Line 25, Named "init"
		arg1.fireDataChanged = arg2
		arg1.intervalInSec = arg3
	end;
}
local setInterval_upvr = LuauPolyfill.setInterval
function module.start(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: setInterval_upvr (readonly)
	]]
	arg1.timerId = setInterval_upvr(arg1.check, arg1.intervalInSec * 1000, arg1)
	arg1.startTime = os.time()
end
local Logger_upvr = require(Achievements.Logger)
function module.check(arg1) -- Line 35
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	if arg1.startTime then
		arg1.fireDataChanged(os.time() - arg1.startTime)
	else
		Logger_upvr:error("No recorded start time")
	end
end
local clearInterval_upvr = LuauPolyfill.clearInterval
function module.stop(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: clearInterval_upvr (readonly)
	]]
	if arg1.timerId then
		clearInterval_upvr(arg1.timerId)
		arg1.startTime = nil
	end
end
return module