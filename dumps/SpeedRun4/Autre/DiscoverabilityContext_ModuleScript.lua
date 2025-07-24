-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:42
-- Luau version 6, Types version 3
-- Time taken: 0.001028 seconds

local Parent = script.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local useSelector_upvr = dependencies.Hooks.useSelector
local React_upvr = dependencies.React
local DiscoverabilityModalAnalyticsContext_upvr = require(Parent.Analytics.DiscoverabilityModalAnalyticsContext)
local setupFireAnalyticsEvents_upvr = require(Parent.Analytics.setupFireAnalyticsEvents)
local AnalyticsService_upvr = require(Parent.Analytics.AnalyticsService)
local Constants_upvr = require(Parent.Common.Constants)
return function(arg1) -- Line 11, Named "Container"
	--[[ Upvalues[6]:
		[1]: useSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: DiscoverabilityModalAnalyticsContext_upvr (readonly)
		[4]: setupFireAnalyticsEvents_upvr (readonly)
		[5]: AnalyticsService_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	return function(arg1_2) -- Line 12
		--[[ Upvalues[7]:
			[1]: useSelector_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: DiscoverabilityModalAnalyticsContext_upvr (copied, readonly)
			[4]: setupFireAnalyticsEvents_upvr (copied, readonly)
			[5]: AnalyticsService_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local module = {}
		local tbl_3 = {}
		local tbl = {
			analytics = AnalyticsService_upvr;
		}
		local tbl_2 = {
			uid = useSelector_upvr(function(arg1_3) -- Line 13
				return arg1_3.LocalUserId
			end);
		}
		local var15
		if arg1_2.navigation then
			var15 = arg1_2.navigation.getParam(Constants_upvr.ENTRY_POINT)
		else
			var15 = arg1_2.entryPoint
		end
		tbl_2.entry = var15
		tbl.defaultAnalyticsInfo = tbl_2
		tbl_3.fireAnalyticsEvent = setupFireAnalyticsEvents_upvr(tbl)
		module.value = tbl_3
		return React_upvr.createElement(DiscoverabilityModalAnalyticsContext_upvr.Provider, module, {React_upvr.createElement(arg1, arg1_2)})
	end
end