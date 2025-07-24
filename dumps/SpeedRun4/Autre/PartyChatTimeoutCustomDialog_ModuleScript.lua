-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:50
-- Luau version 6, Types version 3
-- Time taken: 0.002702 seconds

local InterventionShared = script:FindFirstAncestor("InterventionShared")
local Parent = InterventionShared.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local LuauPolyfill = require(Parent.LuauPolyfill)
local useTokens_upvr = Foundation.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InterventionShared.Utils.Constants)
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local FFlagAppChatInterventionFocusFix_upvr = require(InterventionShared.Flags.FFlagAppChatInterventionFocusFix)
local interventionTreatmentShownSignal_upvr = require(InterventionShared.Signals.interventionTreatmentShownSignal)
local useCountdownBinding_upvr = require(InterventionShared.Hooks.useCountdownBinding)
local setTimeout_upvr = LuauPolyfill.setTimeout
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local InterventionDialog_upvr = require(InterventionShared.Components.InterventionDialog)
local IconSize_upvr = Foundation.Enums.IconSize
local InterventionAnalytics_upvr = require(InterventionShared.InterventionAnalytics)
return React_upvr.memo(function(arg1) -- Line 31
	--[[ Upvalues[14]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Localization_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: FFlagAppChatInterventionFocusFix_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: interventionTreatmentShownSignal_upvr (readonly)
		[9]: useCountdownBinding_upvr (readonly)
		[10]: setTimeout_upvr (readonly)
		[11]: clearTimeout_upvr (readonly)
		[12]: InterventionDialog_upvr (readonly)
		[13]: IconSize_upvr (readonly)
		[14]: InterventionAnalytics_upvr (readonly)
	]]
	if FFlagAppChatInterventionFocusFix_upvr then
		React_upvr.useEffect(function() -- Line 36
			--[[ Upvalues[2]:
				[1]: interventionTreatmentShownSignal_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			interventionTreatmentShownSignal_upvr:fire(Constants_upvr.TreatmentType.PartyChatTimeoutDialog)
		end, {})
	end
	React_upvr.useEffect(function() -- Line 42
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: setTimeout_upvr (copied, readonly)
			[3]: clearTimeout_upvr (copied, readonly)
		]]
		local var22_upvw
		if arg1.endTimestamp ~= nil then
			var22_upvw = setTimeout_upvr(function() -- Line 45
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.onDismiss()
			end, math.max(arg1.endTimestamp - DateTime.now().UnixTimestamp + 1, 1) * 1000)
		end
		return function() -- Line 49
			--[[ Upvalues[2]:
				[1]: var22_upvw (read and write)
				[2]: clearTimeout_upvr (copied, readonly)
			]]
			if var22_upvw then
				clearTimeout_upvr(var22_upvw)
			end
		end
	end, {arg1.endTimestamp, arg1.onDismiss})
	local module_2 = {}
	local any_new_result1_upvr = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	module_2.titleText = useCountdownBinding_upvr(arg1.endTimestamp, "0:00"):map(function(arg1_2) -- Line 57
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		local module = {}
		module.remainingTime = arg1_2
		return any_new_result1_upvr:Format(Constants_upvr.localizationKeys.PartyChatSuspendedText, module)
	end)
	module_2.bodyText = useLocalization_upvr(Constants_upvr.localizationKeys).CantUsePartyChatText
	module_2.onDismiss = arg1.onDismiss
	module_2.iconName = "icons/status/error_large"
	module_2.iconSize = IconSize_upvr.Large
	module_2.iconStyle = useTokens_upvr().Color.System.Alert
	module_2.eventId = arg1.eventId
	module_2.namespaceForAnalytics = InterventionAnalytics_upvr.Constants.CounterNamespaceTypes.PartyChat
	module_2.interventionTypeForAnalytics = InterventionAnalytics_upvr.Constants.InterventionTypes.PartyChatTimeout
	module_2.durationForAnalytics = arg1.durationForAnalytics
	return React_upvr.createElement(InterventionDialog_upvr, module_2)
end)