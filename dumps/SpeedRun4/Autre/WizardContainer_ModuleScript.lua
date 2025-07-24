-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:18
-- Luau version 6, Types version 3
-- Time taken: 0.001562 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local Enums = require(AmpUpsell.Common.Enums)
local ActionStatusEnum_upvr = Enums.ActionStatusEnum
local function getSuccessfulActions_upvr(arg1) -- Line 51, Named "getSuccessfulActions"
	--[[ Upvalues[1]:
		[1]: ActionStatusEnum_upvr (readonly)
	]]
	for i, v in pairs(arg1) do
		if v == ActionStatusEnum_upvr.Success then
			table.insert({}, i)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local FFlagAmpV2UpsellSupport_upvr = require(Parent.SharedFlags).FFlagAmpV2UpsellSupport
local FFlagEnableAmpFAEUpsellSupport_upvr = require(Parent.SharedFlags).FFlagEnableAmpFAEUpsellSupport
local AmpApiProvider_upvr = require(AmpUpsell.Common.AmpApiProvider)
local AnalyticsService_upvr = require(AmpUpsell.Analytics.AnalyticsService)
local React_upvr = require(Parent.React)
local useApolloClient_upvr = require(Parent.ApolloClient).useApolloClient
local ActionTypeEnum_upvr = Enums.ActionTypeEnum
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local Cryo_upvr = require(Parent.Cryo)
local AccessResponseEnum_upvr = Enums.AccessResponseEnum
local GetFFlagEnableAmpEmailUpsellSupport_upvr = require(AmpUpsell.Flags.GetFFlagEnableAmpEmailUpsellSupport)
local GetFFlagEnableAmpIDVUpsellSupport_upvr = require(AmpUpsell.Flags.GetFFlagEnableAmpIDVUpsellSupport)
local GetFFlagEnableAmpVPCUpsellSupport_upvr = require(Parent.SharedFlags).GetFFlagEnableAmpVPCUpsellSupport
local accountSettingsUpsellStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).accountSettingsUpsellStrings
local GetFFlagEnableAmpUpsellGql_upvr = require(AmpUpsell.Flags.GetFFlagEnableAmpUpsellGql)
local sendModalActionEvent_upvr = require(AmpUpsell.Analytics.sendModalActionEvent)
local ErrorScreen_upvr = require(AmpUpsell.Components.ErrorScreen)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
return function(arg1) -- Line 61, Named "WizardContainer"
	--[[ Upvalues[21]:
		[1]: useNavigation_upvr (readonly)
		[2]: FFlagAmpV2UpsellSupport_upvr (readonly)
		[3]: FFlagEnableAmpFAEUpsellSupport_upvr (readonly)
		[4]: AmpApiProvider_upvr (readonly)
		[5]: AnalyticsService_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: useApolloClient_upvr (readonly)
		[8]: ActionTypeEnum_upvr (readonly)
		[9]: AppScreens_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: ActionStatusEnum_upvr (readonly)
		[12]: AccessResponseEnum_upvr (readonly)
		[13]: GetFFlagEnableAmpEmailUpsellSupport_upvr (readonly)
		[14]: GetFFlagEnableAmpIDVUpsellSupport_upvr (readonly)
		[15]: GetFFlagEnableAmpVPCUpsellSupport_upvr (readonly)
		[16]: accountSettingsUpsellStrings_upvr (readonly)
		[17]: GetFFlagEnableAmpUpsellGql_upvr (readonly)
		[18]: getSuccessfulActions_upvr (readonly)
		[19]: sendModalActionEvent_upvr (readonly)
		[20]: ErrorScreen_upvr (readonly)
		[21]: LoadingSpinner_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	if FFlagAmpV2UpsellSupport_upvr then
	else
	end
	if FFlagEnableAmpFAEUpsellSupport_upvr then
		-- KONSTANTWARNING: GOTO [24] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 45 start (CF ANALYSIS FAILED)
	if arg1.ampApiProvider then
		-- KONSTANTWARNING: GOTO [31] #23
	end
	-- KONSTANTERROR: [23] 17. Error Block 45 end (CF ANALYSIS FAILED)
end