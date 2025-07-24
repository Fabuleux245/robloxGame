-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:02
-- Luau version 6, Types version 3
-- Time taken: 0.000839 seconds

local Parent = script.Parent.Parent
local SocialLuaAnalytics = require(Parent.Parent.SocialLuaAnalytics)
local FFlagUserProfilesLogErrorCodes_upvr = require(Parent.Flags.FFlagUserProfilesLogErrorCodes)
local fireDiag_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireDiag
local DiagCountersList_upvr = require(script.Parent.DiagCountersList)
local fireDiagCounter_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
return function(arg1) -- Line 14
	--[[ Upvalues[4]:
		[1]: FFlagUserProfilesLogErrorCodes_upvr (readonly)
		[2]: fireDiag_upvr (readonly)
		[3]: DiagCountersList_upvr (readonly)
		[4]: fireDiagCounter_upvr (readonly)
	]]
	if FFlagUserProfilesLogErrorCodes_upvr then
		local fireDiag_upvr_result1_upvr = fireDiag_upvr({
			diagImpl = arg1.analytics.Diag;
			eventList = DiagCountersList_upvr;
		})
		return function(arg1_2, arg2) -- Line 23
			--[[ Upvalues[2]:
				[1]: DiagCountersList_upvr (copied, readonly)
				[2]: fireDiag_upvr_result1_upvr (readonly)
			]]
			if DiagCountersList_upvr[arg1_2] then
				return fireDiag_upvr_result1_upvr(arg1_2, arg2)
			end
			return arg1_2
		end
	end
	fireDiag_upvr_result1_upvr = fireDiagCounter_upvr
	fireDiag_upvr_result1_upvr = fireDiag_upvr_result1_upvr({
		diagImpl = arg1.analytics.Diag;
		eventList = DiagCountersList_upvr;
	})
	return function(arg1_3) -- Line 36
		--[[ Upvalues[2]:
			[1]: DiagCountersList_upvr (copied, readonly)
			[2]: fireDiag_upvr_result1_upvr (readonly)
		]]
		if DiagCountersList_upvr[arg1_3] then
			return fireDiag_upvr_result1_upvr(arg1_3)
		end
		return arg1_3
	end
end