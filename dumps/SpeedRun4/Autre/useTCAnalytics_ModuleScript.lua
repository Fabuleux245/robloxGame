-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:13
-- Luau version 6, Types version 3
-- Time taken: 0.000481 seconds

local React_upvr = require(script:FindFirstAncestor("TrustedContacts").Parent.React)
local AnalyticsSetup_upvr = require(script.Parent.AnalyticsSetup)
return function(arg1) -- Line 12, Named "useTCAnalytics"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AnalyticsSetup_upvr (readonly)
	]]
	local module = {}
	module[1] = arg1
	return React_upvr.useMemo(function() -- Line 13
		--[[ Upvalues[2]:
			[1]: AnalyticsSetup_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local module_2 = {}
		module_2.infoForAllEvents = arg1
		return AnalyticsSetup_upvr(module_2)
	end, module)
end