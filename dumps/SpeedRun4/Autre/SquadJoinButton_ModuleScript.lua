-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:23
-- Luau version 6, Types version 3
-- Time taken: 0.004613 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local UIBlox = require(Parent.UIBlox)
local dependencies = require(Squads.dependencies)
local Foundation_upvr = dependencies.Foundation
local SquadsCore = dependencies.SquadsCore
local tbl_2_upvr = {
	dampingRatio = 1;
	frequency = 1;
}
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = require(Parent.SharedFlags).FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local useSquadState_upvr = require(Squads.Hooks.useSquadState)
local ReactOtter_upvr = require(Parent.ReactOtter)
local useSelector_upvr = dependencies.Hooks.useSelector
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local SquadButtonClickIntentionEnum_upvr = require(Squads.Enums.SquadButtonClickIntentionEnum)
local EventNames_upvr = SquadsCore.Analytics.EventNames
local leaveSquad_upvr = dependencies.SquadsCore.Thunks.leaveSquad
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local SquadState_upvr = dependencies.SquadsCore.Enums.SquadState
local Constants_upvr = SquadsCore.Common.Constants
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 54
	--[[ Upvalues[21]:
		[1]: useLocalization_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: SquadExternalContractContext_upvr (readonly)
		[6]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[7]: useSquadState_upvr (readonly)
		[8]: ReactOtter_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: useSelector_upvr (readonly)
		[11]: dependencyArray_upvr (readonly)
		[12]: SquadButtonClickIntentionEnum_upvr (readonly)
		[13]: EventNames_upvr (readonly)
		[14]: leaveSquad_upvr (readonly)
		[15]: SquadPromptType_upvr (readonly)
		[16]: game_GetEngineFeature_result1_upvr (readonly)
		[17]: Foundation_upvr (readonly)
		[18]: SquadState_upvr (readonly)
		[19]: Constants_upvr (readonly)
		[20]: ImageSetLabel_upvr (readonly)
		[21]: Images_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local var9_result1_upvr = useLocalization_upvr({
		joinButtonText = "Feature.Squads.Action.Join";
		startButtonText = "Feature.Squads.Action.Start";
		viewButtonText = "Feature.Squads.Action.View";
	})
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local conversationId_upvr = arg1.conversationId
	local any_useParentChannelHasGroupUp_result1_upvr = any_useContext_result1_upvr.useParentChannelHasGroupUp(conversationId_upvr)
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		conversationId_upvr = any_useContext_result1_upvr.useIsChatEnabled()
	else
		conversationId_upvr = true
	end
	local var34_upvw
	local _, any_useAnimatedBinding_result2 = ReactOtter_upvr.useAnimatedBinding(1, function(arg1_2) -- Line 73
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var34_upvw (read and write)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: tbl_2_upvr (copied, readonly)
		]]
		if arg1.shouldAnimate then
			task.delay(0.5, function() -- Line 75
				--[[ Upvalues[4]:
					[1]: var34_upvw (copied, read and write)
					[2]: ReactOtter_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
					[4]: tbl_2_upvr (copied, readonly)
				]]
				local var36 = ReactOtter_upvr
				if arg1_2 == 1 then
					var36 = 0
				else
					var36 = 1
				end
				var34_upvw(var36.spring(var36, tbl_2_upvr))
			end)
		end
	end)
	var34_upvw = any_useAnimatedBinding_result2
	local var39_upvw = var34_upvw
	React_upvr.useEffect(function() -- Line 81
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var39_upvw (read and write)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: tbl_2_upvr (copied, readonly)
		]]
		if arg1.shouldAnimate then
			var39_upvw(ReactOtter_upvr.spring(1, tbl_2_upvr))
		else
			var39_upvw(ReactOtter_upvr.instant(1))
		end
	end, {arg1.shouldAnimate, var39_upvw})
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 89
		if arg1_3.Squad and arg1_3.Squad.Squad then
			return arg1_3.Squad.Squad.currentSquad
		end
		return nil
	end, {}))
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 98
		--[[ Upvalues[2]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		local var45 = useSelector_upvr_result1_upvr
		if var45 then
			if useSelector_upvr_result1_upvr.parentChannelId ~= arg1.conversationId then
				var45 = false
			else
				var45 = true
			end
		end
		return var45
	end, dependencyArray_upvr(useSelector_upvr_result1_upvr, arg1.conversationId))
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 102
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
	local function _() -- Line 113
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: var9_result1_upvr (readonly)
			[3]: any_useParentChannelHasGroupUp_result1_upvr (readonly)
		]]
		if any_useMemo_result1_upvr_2 then
			return var9_result1_upvr.viewButtonText
		end
		if any_useParentChannelHasGroupUp_result1_upvr then
			return var9_result1_upvr.joinButtonText
		end
		return var9_result1_upvr.startButtonText
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 132
		--[[ Upvalues[5]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: any_useMemo_result1_upvr (readonly)
		]]
		local tbl = {
			conversationId = arg1.conversationId;
			squadButtonSource = arg1.squadButtonSource;
		}
		local var52 = useSelector_upvr_result1_upvr
		if var52 then
			var52 = useSelector_upvr_result1_upvr.squadId
		end
		tbl.squadId = var52
		tbl.squadLocation = arg1.squadLocation
		tbl.userIntention = any_useMemo_result1_upvr
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.EnterSquadButtonPressed, tbl)
	end, dependencyArray_upvr(any_useMemo_result1_upvr, useSelector_upvr_result1_upvr, arg1.conversationId, arg1.squadButtonSource, arg1.squadLocation, any_useContext_result1_upvr.fireSquadAnalytics))
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function _() -- Line 152
		--[[ Upvalues[11]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: leaveSquad_upvr (copied, readonly)
			[6]: SquadPromptType_upvr (copied, readonly)
			[7]: any_useContext_result1_upvr (readonly)
			[8]: arg1 (readonly)
			[9]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[10]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
			[11]: conversationId_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		any_useCallback_result1_upvr()
		if not any_useMemo_result1_upvr_2 then
			local var58
			if useSelector_upvr_result1_upvr then
				if game_GetEngineFeature_result1_upvr then
					var58 = any_useContext_result1_upvr.squadLocation
				else
					var58 = nil
				end
				if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
				else
				end
				useDispatch_upvr_result1_upvr(leaveSquad_upvr(SquadPromptType_upvr.JoinAnotherSquad, any_useContext_result1_upvr.setSquadPrompt, function() -- Line 159
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.onActivated(arg1.conversationId)
				end, var58, true))
				return
			end
		end
		arg1.onActivated(arg1.conversationId)
	end
	if game_GetEngineFeature_result1_upvr then
		-- KONSTANTWARNING: GOTO [168] #139
	end
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [167] 138. Error Block 60 start (CF ANALYSIS FAILED)
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		-- KONSTANTWARNING: GOTO [173] #144
	end
	-- KONSTANTERROR: [167] 138. Error Block 60 end (CF ANALYSIS FAILED)
end