-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:38
-- Luau version 6, Types version 3
-- Time taken: 0.001269 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local toastNotificationHelper = require(Parent.utils.toastNotificationHelper)
local LuauPolyfill = dependencies.LuauPolyfill
local React_upvr = dependencies.React
local getNearestWholeNumber_upvr = toastNotificationHelper.getNearestWholeNumber
local calculateTimeRemaining_upvr = toastNotificationHelper.calculateTimeRemaining
local setInterval_upvr = LuauPolyfill.setInterval
local clearInterval_upvr = LuauPolyfill.clearInterval
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
return function(arg1, arg2) -- Line 26, Named "useTimeRemainingMap"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: getNearestWholeNumber_upvr (readonly)
		[3]: calculateTimeRemaining_upvr (readonly)
		[4]: setInterval_upvr (readonly)
		[5]: clearInterval_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
	]]
	local _, any_useState_result2_upvr = React_upvr.useState(0)
	local module = {}
	local var21_upvw
	for i, v in pairs(arg1) do
		local var6_result1 = getNearestWholeNumber_upvr(calculateTimeRemaining_upvr(v, arg2.notificationReceivedTimestampMs, arg2.displayTimestampMs) / 1000)
		if 0 < var6_result1 then
			var21_upvw = false
		end
		module[i] = math.max(0, var6_result1)
	end
	React_upvr.useEffect(function() -- Line 43
		--[[ Upvalues[4]:
			[1]: var21_upvw (read and write)
			[2]: setInterval_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: clearInterval_upvr (copied, readonly)
		]]
		local var24_upvw
		if not var21_upvw then
			var24_upvw = setInterval_upvr(function() -- Line 46
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(os.clock())
			end, 100)
		end
		return function() -- Line 51
			--[[ Upvalues[2]:
				[1]: var24_upvw (read and write)
				[2]: clearInterval_upvr (copied, readonly)
			]]
			if var24_upvw then
				clearInterval_upvr(var24_upvw)
			end
		end
	end, dependencyArray_upvr(var21_upvw, any_useState_result2_upvr))
	return module
end