-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:50
-- Luau version 6, Types version 3
-- Time taken: 0.001013 seconds

local InterventionShared = script:FindFirstAncestor("InterventionShared")
local Parent = InterventionShared.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InterventionShared.Utils.Constants)
local FFlagAppChatInterventionFocusFix_upvr = require(InterventionShared.Flags.FFlagAppChatInterventionFocusFix)
local interventionTreatmentShownSignal_upvr = require(InterventionShared.Signals.interventionTreatmentShownSignal)
local InterventionDialog_upvr = require(InterventionShared.Components.InterventionDialog)
local IconSize_upvr = Foundation.Enums.IconSize
local InterventionAnalytics_upvr = require(InterventionShared.InterventionAnalytics)
return React_upvr.memo(function(arg1) -- Line 23
	--[[ Upvalues[9]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: FFlagAppChatInterventionFocusFix_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: interventionTreatmentShownSignal_upvr (readonly)
		[7]: InterventionDialog_upvr (readonly)
		[8]: IconSize_upvr (readonly)
		[9]: InterventionAnalytics_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr(Constants_upvr.localizationKeys)
	if FFlagAppChatInterventionFocusFix_upvr then
		React_upvr.useEffect(function() -- Line 27
			--[[ Upvalues[2]:
				[1]: interventionTreatmentShownSignal_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			interventionTreatmentShownSignal_upvr:fire(Constants_upvr.TreatmentType.PartyChatNudgeDialog)
		end, {})
	end
	return React_upvr.createElement(InterventionDialog_upvr, {
		titleText = useLocalization_upvr_result1.DontSharePersonalInformationText;
		bodyText = useLocalization_upvr_result1.PartyChatMayBeSuspendedText;
		onDismiss = arg1.onDismiss;
		iconName = "icons/status/error_large";
		iconSize = IconSize_upvr.Large;
		iconStyle = useTokens_upvr().Color.System.Warning;
		eventId = arg1.eventId;
		namespaceForAnalytics = InterventionAnalytics_upvr.Constants.CounterNamespaceTypes.PartyChat;
		interventionTypeForAnalytics = InterventionAnalytics_upvr.Constants.InterventionTypes.PartyChatNudge;
	})
end)