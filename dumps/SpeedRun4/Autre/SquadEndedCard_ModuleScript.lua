-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:29
-- Luau version 6, Types version 3
-- Time taken: 0.004875 seconds

local Parent = script:FindFirstAncestor("SocialCards").Parent
local Foundation_upvr = require(Parent.Foundation)
local Squads = require(Parent.Squads)
local SquadsCore = require(Parent.SquadsCore)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useCurrentSquadId_upvr = SquadsCore.Hooks.useCurrentSquadId
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = require(Parent.SharedFlags).FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SquadButtonClickIntentionEnum_upvr = Squads.Enums.SquadButtonClickIntentionEnum
local EventNames_upvr = SquadsCore.Analytics.EventNames
local SquadButtonSourceEnum_upvr = Squads.Enums.SquadButtonSourceEnum
local leaveSquad_upvr = SquadsCore.Thunks.leaveSquad
local SquadPromptType_upvr = SquadsCore.Enums.SquadPromptType
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
return function(arg1) -- Line 35, Named "SquadEndedCard"
	--[[ Upvalues[17]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useCurrentSquadId_upvr (readonly)
		[6]: useCurrentSquadParentChannelId_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: SquadExternalContractContext_upvr (readonly)
		[9]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: SquadButtonClickIntentionEnum_upvr (readonly)
		[12]: EventNames_upvr (readonly)
		[13]: SquadButtonSourceEnum_upvr (readonly)
		[14]: Foundation_upvr (readonly)
		[15]: leaveSquad_upvr (readonly)
		[16]: SquadPromptType_upvr (readonly)
		[17]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		partyEnded = "Feature.Squads.Label.PartyEndedText";
		tapToStartNewParty = "Feature.Squads.Action.TapToStartNewParty";
	})
	local var8_result1 = useTokens_upvr()
	local useCurrentSquadId_upvr_result1_upvr = useCurrentSquadId_upvr()
	local var10_result1_upvr = useCurrentSquadParentChannelId_upvr()
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local any_useParentChannelHasGroupUp_result1_upvr = any_useContext_result1_upvr.useParentChannelHasGroupUp(arg1.conversationId)
	local any_useParentChannelHasSquadAccess_result1 = any_useContext_result1_upvr.useParentChannelHasSquadAccess(arg1.conversationId)
	local var29_upvr
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		var29_upvr = any_useContext_result1_upvr.useIsChatEnabled()
	else
		var29_upvr = true
	end
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: var10_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		local var31
		if var10_result1_upvr ~= arg1.conversationId then
			var31 = false
		else
			var31 = true
		end
		return var31
	end, dependencyArray_upvr(var10_result1_upvr, arg1.conversationId))
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 58
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: SquadButtonClickIntentionEnum_upvr (copied, readonly)
			[3]: any_useParentChannelHasGroupUp_result1_upvr (readonly)
		]]
		if any_useMemo_result1_upvr_2 then
			return SquadButtonClickIntentionEnum_upvr.View
		end
		if any_useParentChannelHasGroupUp_result1_upvr then
			return SquadButtonClickIntentionEnum_upvr.Join
		end
		return SquadButtonClickIntentionEnum_upvr.Create
	end, dependencyArray_upvr(any_useMemo_result1_upvr_2, any_useParentChannelHasGroupUp_result1_upvr))
	local module = {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		backgroundStyle = var8_result1.Color.Shift.Shift_200;
		cornerRadius = UDim.new(0, var8_result1.Radius.Large);
		layout = {
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, var8_result1.Gap.XSmall);
			SortOrder = Enum.SortOrder.LayoutOrder;
		};
	}
	if any_useParentChannelHasSquadAccess_result1 then
		local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 69
			--[[ Upvalues[6]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: SquadButtonSourceEnum_upvr (copied, readonly)
				[5]: useCurrentSquadId_upvr_result1_upvr (readonly)
				[6]: any_useMemo_result1_upvr (readonly)
			]]
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.EnterSquadButtonPressed, {
				conversationId = arg1.conversationId;
				squadButtonSource = SquadButtonSourceEnum_upvr.PartyEndedCard;
				squadId = useCurrentSquadId_upvr_result1_upvr;
				squadLocation = arg1.squadLocation;
				userIntention = any_useMemo_result1_upvr;
			})
		end, dependencyArray_upvr(any_useMemo_result1_upvr, useCurrentSquadId_upvr_result1_upvr, arg1.conversationId, arg1.squadLocation, any_useContext_result1_upvr.fireSquadAnalytics))
		local useDispatch_upvr_result1_upvr = useDispatch_upvr()
		local var7_result1_upvr = useNavigation_upvr()
		local function _() -- Line 98
			--[[ Upvalues[12]:
				[1]: any_useCallback_result1_upvr (readonly)
				[2]: useCurrentSquadId_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: var10_result1_upvr (readonly)
				[5]: useDispatch_upvr_result1_upvr (readonly)
				[6]: leaveSquad_upvr (copied, readonly)
				[7]: SquadPromptType_upvr (copied, readonly)
				[8]: any_useContext_result1_upvr (readonly)
				[9]: var7_result1_upvr (readonly)
				[10]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[11]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
				[12]: var29_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_useCallback_result1_upvr()
			if useCurrentSquadId_upvr_result1_upvr then
				local var47
				if arg1.conversationId ~= var10_result1_upvr then
					if game_GetEngineFeature_result1_upvr then
						var47 = any_useContext_result1_upvr.squadLocation
					else
						var47 = nil
					end
					if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
					else
					end
					useDispatch_upvr_result1_upvr(leaveSquad_upvr(SquadPromptType_upvr.JoinAnotherSquad, any_useContext_result1_upvr.setSquadPrompt, function() -- Line 105
						--[[ Upvalues[2]:
							[1]: var7_result1_upvr (copied, readonly)
							[2]: arg1 (copied, readonly)
						]]
						var7_result1_upvr.navigate("SquadLobby", {
							conversationId = arg1.conversationId;
						})
					end, var47, true))
					return
				end
			end
			var7_result1_upvr.navigate("SquadLobby", {
				conversationId = arg1.conversationId;
			})
		end
		-- KONSTANTWARNING: GOTO [159] #122
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [158] 121. Error Block 22 start (CF ANALYSIS FAILED)
	module.onActivated = nil
	module.padding = {
		bottom = UDim.new(0, var8_result1.Padding.Medium);
		left = UDim.new(0, var8_result1.Padding.Large);
		right = UDim.new(0, var8_result1.Padding.Large);
		top = UDim.new(0, var8_result1.Padding.Medium);
	}
	local module_2 = {
		Title = React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			backgroundStyle = var8_result1.Color.None;
			fontStyle = var8_result1.Typography.TitleMedium;
			LayoutOrder = 1;
			Text = useLocalization_upvr_result1.partyEnded;
			textStyle = var8_result1.Color.Content.Emphasis;
			TextTruncate = Enum.TextTruncate.AtEnd;
		});
	}
	if any_useParentChannelHasSquadAccess_result1 then
		local _ = {
			AutomaticSize = Enum.AutomaticSize.XY;
			backgroundStyle = var8_result1.Color.None;
			fontStyle = var8_result1.Typography.LabelSmall;
			LayoutOrder = 2;
			Text = useLocalization_upvr_result1.tapToStartNewParty;
			textStyle = var8_result1.Color.Content.Muted;
			TextTruncate = Enum.TextTruncate.AtEnd;
		}
	else
	end
	module_2.Status = nil
	do
		return React_upvr.createElement(Foundation_upvr.View, module, module_2)
	end
	-- KONSTANTERROR: [158] 121. Error Block 22 end (CF ANALYSIS FAILED)
end