-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:59
-- Luau version 6, Types version 3
-- Time taken: 0.001239 seconds

local Cryo_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.Cryo)
local AnalyticsFactory_upvr = require(script.Parent.AnalyticsFactory)
return function(arg1) -- Line 29, Named "setUpAnalyticsFactory"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: AnalyticsFactory_upvr (readonly)
	]]
	return function(arg1_2) -- Line 30
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AnalyticsFactory_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local staticInfoForAllEvents = arg1.staticInfoForAllEvents
		if not staticInfoForAllEvents then
			staticInfoForAllEvents = {}
		end
		if not arg1_2 or not arg1_2.infoForAllEvents then
		end
		return AnalyticsFactory_upvr(Cryo_upvr.Dictionary.join(arg1, {
			infoForAllEvents = Cryo_upvr.Dictionary.join(staticInfoForAllEvents, {});
		}))
	end
end