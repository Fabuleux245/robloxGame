-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:37
-- Luau version 6, Types version 3
-- Time taken: 0.006478 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local SquadsCore = require(Parent.SquadsCore)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	motorCallback = require(Parent.Otter).instant;
	open = {
		targetValue = 1;
	};
	close = {
		targetValue = 0;
	};
}
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useDeviceOrientation_upvr = require(Parent.RobloxAppHooks).useDeviceOrientation
local DeviceOrientationMode_upvr = require(Parent.RobloxAppEnums).DeviceOrientationMode
local useCurrentSquadId_upvr = SquadsCore.Hooks.useCurrentSquadId
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = require(Parent.SharedFlags).FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local leaveSquad_upvr = SquadsCore.Thunks.leaveSquad
local SquadPromptType_upvr = SquadsCore.Enums.SquadPromptType
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local Foundation_upvr = require(Parent.Foundation)
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
return React_upvr.memo(function(arg1) -- Line 53
	--[[ Upvalues[17]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLayerCollector_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: useDeviceOrientation_upvr (readonly)
		[5]: DeviceOrientationMode_upvr (readonly)
		[6]: useCurrentSquadId_upvr (readonly)
		[7]: useCurrentSquadParentChannelId_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: SquadExternalContractContext_upvr (readonly)
		[10]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[11]: leaveSquad_upvr (readonly)
		[12]: SquadPromptType_upvr (readonly)
		[13]: game_GetEngineFeature_result1_upvr (readonly)
		[14]: Foundation_upvr (readonly)
		[15]: ContextualMenu_upvr (readonly)
		[16]: MenuDirection_upvr (readonly)
		[17]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useDeviceOrientation_upvr_result1 = useDeviceOrientation_upvr()
	if not useDeviceOrientation_upvr_result1 then
		useDeviceOrientation_upvr_result1 = DeviceOrientationMode_upvr.Portrait
	end
	local var14_result1_upvr = useCurrentSquadId_upvr()
	local var15_result1_upvr = useCurrentSquadParentChannelId_upvr()
	local var28_upvr = SquadExternalContractContext_upvr
	local any_useContext_result1_upvr = React_upvr.useContext(var28_upvr)
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		var28_upvr = any_useContext_result1_upvr.useIsChatEnabled()
	else
		var28_upvr = true
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 71
		--[[ Upvalues[9]:
			[1]: var14_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var15_result1_upvr (readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: leaveSquad_upvr (copied, readonly)
			[6]: SquadPromptType_upvr (copied, readonly)
			[7]: any_useContext_result1_upvr (readonly)
			[8]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[9]: var28_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
		if var14_result1_upvr then
			local var34
			if arg1.conversationId ~= var15_result1_upvr then
				if game_GetEngineFeature_result1_upvr then
					var34 = any_useContext_result1_upvr.squadLocation
				else
					var34 = nil
				end
				useDispatch_upvr_result1_upvr(leaveSquad_upvr(SquadPromptType_upvr.JoinAnotherSquad, any_useContext_result1_upvr.setSquadPrompt, function() -- Line 79
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.navigateToSquadLobby(arg1.conversationId)
				end, var34, var28_upvr))
				-- KONSTANTWARNING: GOTO [36] #30
			end
		end
		arg1.navigateToSquadLobby(arg1.conversationId)
		-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 30. Error Block 10 start (CF ANALYSIS FAILED)
		arg1.onDismiss()
		-- KONSTANTERROR: [36] 30. Error Block 10 end (CF ANALYSIS FAILED)
	end, {arg1.navigateToSquadLobby, arg1.onDismiss, arg1.conversationId, var14_result1_upvr, var15_result1_upvr, any_useContext_result1_upvr, var28_upvr})
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		joinParty = "Feature.Squads.Label.JoinParty";
		startParty = "Feature.Squads.Label.StartParty";
		viewParty = "Feature.Squads.Label.ViewParty";
	})
	local module = {}
	if useDeviceOrientation_upvr_result1 == DeviceOrientationMode_upvr.Landscape then
		local udim2 = UDim2.new(0, 250, 0, 0)
	else
	end
	module.Size = UDim2.new(1, 0, 0, 0)
	module.tag = "auto-y bg-action-subtle"
	module.LayoutOrder = arg1.layoutOrder
	return React_upvr.createElement(Foundation_upvr.View, module, {
		MoreOptionsMenu = React_upvr.createElement(ContextualMenu_upvr, {
			bottomElementRounded = true;
			buttonProps = React_upvr.useMemo(function() -- Line 104
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: var15_result1_upvr (readonly)
					[3]: useLocalization_upvr_result1_upvr (readonly)
					[4]: any_useCallback_result1_upvr (readonly)
				]]
				local module_2 = {}
				local tbl = {}
				local var42
				if arg1.conversation.hasGroupUp and arg1.conversationId == var15_result1_upvr then
					var42 = useLocalization_upvr_result1_upvr.viewParty
				elseif arg1.conversation.hasGroupUp then
					var42 = useLocalization_upvr_result1_upvr.joinParty
				else
					var42 = useLocalization_upvr_result1_upvr.startParty
				end
				tbl.text = var42
				var42 = any_useCallback_result1_upvr
				tbl.onActivated = var42
				module_2[1] = tbl
				return module_2
			end, {arg1.conversation.hasGroupUp, arg1.conversationId, any_useCallback_result1_upvr, var15_result1_upvr});
			closeBackgroundVisible = false;
			horizontalAlignment = Enum.HorizontalAlignment.Left;
			menuDirection = MenuDirection_upvr.Up;
			motorOverrideOptions = tbl_upvr;
			onDismiss = arg1.onDismiss;
			open = arg1.open;
			openPositionX = UDim.new(0, arg1.leftOffset);
			openPositionY = UDim.new(0, -arg1.bottomOffset);
			screenSize = useLayerCollector_upvr().absoluteSize;
			topElementRounded = true;
		});
	})
end)