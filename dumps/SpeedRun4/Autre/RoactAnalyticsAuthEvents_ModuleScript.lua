-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:49
-- Luau version 6, Types version 3
-- Time taken: 0.001897 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local module = {}
local RoactAnalytics_upvr = require(PhoneUpsell.Parent.RoactServiceTags).RoactAnalytics
local upsellCardModalAction_upvr = require(PhoneUpsell.DuplicateAnalytics.upsellCardModalAction)
local EventStreamConstants_upvr = require(PhoneUpsell.DuplicateAnalytics.EventStreamConstants)
local upsellCardFormInteraction_upvr = require(PhoneUpsell.DuplicateAnalytics.upsellCardFormInteraction)
function module.get(arg1) -- Line 16
	--[[ Upvalues[4]:
		[1]: RoactAnalytics_upvr (readonly)
		[2]: upsellCardModalAction_upvr (readonly)
		[3]: EventStreamConstants_upvr (readonly)
		[4]: upsellCardFormInteraction_upvr (readonly)
	]]
	local any_get_result1_upvr = RoactAnalytics_upvr.get(arg1)
	return {
		reportModalShownWithSection = function(arg1_2, arg2, arg3) -- Line 21, Named "reportModalShownWithSection"
			--[[ Upvalues[3]:
				[1]: upsellCardModalAction_upvr (copied, readonly)
				[2]: any_get_result1_upvr (readonly)
				[3]: EventStreamConstants_upvr (copied, readonly)
			]]
			upsellCardModalAction_upvr(any_get_result1_upvr.EventStream, arg1_2, "", EventStreamConstants_upvr.ActionType.Shown, arg2, arg3)
		end;
		reportModalShownWithSectionAndError = function(arg1_3, arg2, arg3, arg4, arg5) -- Line 32, Named "reportModalShownWithSectionAndError"
			--[[ Upvalues[3]:
				[1]: upsellCardModalAction_upvr (copied, readonly)
				[2]: any_get_result1_upvr (readonly)
				[3]: EventStreamConstants_upvr (copied, readonly)
			]]
			upsellCardModalAction_upvr(any_get_result1_upvr.EventStream, arg1_3, arg2, EventStreamConstants_upvr.ActionType.Shown, arg3, arg4, arg5)
		end;
		reportModalDismissedWithSection = function(arg1_4, arg2, arg3) -- Line 44, Named "reportModalDismissedWithSection"
			--[[ Upvalues[3]:
				[1]: upsellCardModalAction_upvr (copied, readonly)
				[2]: any_get_result1_upvr (readonly)
				[3]: EventStreamConstants_upvr (copied, readonly)
			]]
			upsellCardModalAction_upvr(any_get_result1_upvr.EventStream, arg1_4, "", EventStreamConstants_upvr.ActionType.Dismiss, arg2, arg3)
		end;
		reportModalActionWithSection = function(arg1_5, arg2, arg3, arg4, arg5, arg6) -- Line 55, Named "reportModalActionWithSection"
			--[[ Upvalues[2]:
				[1]: upsellCardModalAction_upvr (copied, readonly)
				[2]: any_get_result1_upvr (readonly)
			]]
			upsellCardModalAction_upvr(any_get_result1_upvr.EventStream, arg1_5, arg2, arg3, arg4, arg5, arg6)
		end;
		reportInteractWithActionAndSection = function(arg1_6, arg2, arg3, arg4, arg5, arg6) -- Line 59, Named "reportInteractWithActionAndSection"
			--[[ Upvalues[2]:
				[1]: upsellCardFormInteraction_upvr (copied, readonly)
				[2]: any_get_result1_upvr (readonly)
			]]
			upsellCardFormInteraction_upvr(any_get_result1_upvr.EventStream, arg1_6, arg2, arg3, arg4, arg5, arg6)
		end;
	}
end
return module