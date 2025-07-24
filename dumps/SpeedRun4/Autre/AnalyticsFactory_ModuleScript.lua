-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:58
-- Luau version 6, Types version 3
-- Time taken: 0.000944 seconds

local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Cryo_upvr = require(SocialLuaAnalytics.Parent.Cryo)
local createFireEvent_upvr = require(SocialLuaAnalytics.Analytics.FireEvent.createFireEvent)
return function(arg1) -- Line 34, Named "AnalyticsFactory"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: createFireEvent_upvr (readonly)
	]]
	local infoForAllEvents_upvw = arg1.infoForAllEvents
	if not infoForAllEvents_upvw then
		infoForAllEvents_upvw = {}
	end
	local function var6() -- Line 42
		--[[ Upvalues[1]:
			[1]: infoForAllEvents_upvw (read and write)
		]]
		return infoForAllEvents_upvw
	end
	return {
		fireAnalyticsEvent = createFireEvent_upvr({
			EventStream = arg1.eventLists.EventStream;
			Diag = arg1.eventLists.Diag;
			Telemetry = arg1.eventLists.Telemetry;
		})({
			analytics = {
				EventStream = arg1.analyticsImpl.EventStream;
				Diag = arg1.analyticsImpl.Diag;
				Telemetry = arg1.analyticsImpl.Telemetry;
			};
			getInfoForAllEvents = var6;
			loggerImpl = arg1.loggerImpl;
		});
		updateInfoForAllEvents = function(arg1_2) -- Line 37
			--[[ Upvalues[2]:
				[1]: infoForAllEvents_upvw (read and write)
				[2]: Cryo_upvr (copied, readonly)
			]]
			infoForAllEvents_upvw = Cryo_upvr.Dictionary.join(infoForAllEvents_upvw, arg1_2)
			return infoForAllEvents_upvw
		end;
		getInfoForAllEvents = var6;
	}
end