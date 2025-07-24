-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:52
-- Luau version 6, Types version 3
-- Time taken: 0.010761 seconds

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService_upvr = game:GetService("LocalizationService")
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Chrome = CoreGui:WaitForChild("RobloxGui").Modules.Chrome
local Enabled_upvr = Chrome.Enabled
local Enabled_upvr_2_upvr = require(Enabled_upvr)
if Enabled_upvr_2_upvr() then
	Enabled_upvr = require(Chrome.Service)
else
	Enabled_upvr = nil
end
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeHideShortcutBarOnInspectAndBuy_upvr = SharedFlags.FFlagChromeHideShortcutBarOnInspectAndBuy
local FFlagChromeEnabledShortcutBarFix_upvr = SharedFlags.FFlagChromeEnabledShortcutBarFix
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local SetLocale_upvr = require(Parent.Actions.SetLocale)
local GetAssetsFromHumanoidDescription_upvr = require(Parent.Thunks.GetAssetsFromHumanoidDescription)
local any_named_result1_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol.named("OverrideCursorInspectMenu")
local any_extend_result1 = Roact_upvr.PureComponent:extend("InspectAndBuy")
function any_extend_result1.pushMouseIconOverride(arg1) -- Line 64
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: MouseIconOverrideService_upvr (readonly)
		[3]: any_named_result1_upvr (readonly)
	]]
	if UserInputService_upvr:GetLastInputType().Name:find("Gamepad") then
		MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceHide)
	else
		MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceShow)
	end
end
function any_extend_result1.popMouseIconOverride(arg1) -- Line 75
	--[[ Upvalues[2]:
		[1]: MouseIconOverrideService_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
	]]
	MouseIconOverrideService_upvr.pop(any_named_result1_upvr)
end
local SetGamepadEnabled_upvr = require(Parent.Actions.SetGamepadEnabled)
function any_extend_result1.configureInputType(arg1, arg2) -- Line 79
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: SetGamepadEnabled_upvr (readonly)
	]]
	local var22 = arg2
	if not var22 then
		var22 = UserInputService_upvr:GetLastInputType()
	end
	if var22.Name:find("Gamepad") then
		arg1.state.store:dispatch(SetGamepadEnabled_upvr(true))
	else
		arg1.state.store:dispatch(SetGamepadEnabled_upvr(false))
	end
end
local SetView_upvr = require(Parent.Actions.SetView)
function any_extend_result1.updateView(arg1) -- Line 90
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: SetView_upvr (readonly)
	]]
	local ViewportSize = workspace.CurrentCamera.ViewportSize
	local Wide = Constants_upvr.View.Wide
	if ViewportSize.X < 600 then
		Wide = Constants_upvr.View.Compact
	elseif ViewportSize.Y < ViewportSize.X and ViewportSize.X < 800 then
		Wide = Constants_upvr.View.WideLandscape
	end
	arg1.state.store:dispatch(SetView_upvr(Wide))
end
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local InspectAndBuyReducer_upvr = require(Parent.Reducers.InspectAndBuyReducer)
local Thunk_upvr = require(Parent.Thunk)
local CompactView_upvr = require(Parent.CompactView)
local WideView_upvr = require(Parent.WideView)
local WideLandscapeView_upvr = require(Parent.WideLandscapeView)
local UpdateStoreId_upvr = require(Parent.Actions.UpdateStoreId)
local SetPlayerName_upvr = require(Parent.Actions.SetPlayerName)
local SetPlayerId_upvr = require(Parent.Actions.SetPlayerId)
local UpdateOwnedStatus_upvr = require(Parent.Thunks.UpdateOwnedStatus)
local SetItemBeingPurchased_upvr = require(Parent.Actions.SetItemBeingPurchased)
function any_extend_result1.init(arg1) -- Line 103
	--[[ Upvalues[17]:
		[1]: Network_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: InspectAndBuyReducer_upvr (readonly)
		[5]: Thunk_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: CompactView_upvr (readonly)
		[8]: WideView_upvr (readonly)
		[9]: WideLandscapeView_upvr (readonly)
		[10]: UpdateStoreId_upvr (readonly)
		[11]: SetPlayerName_upvr (readonly)
		[12]: SetLocale_upvr (readonly)
		[13]: LocalizationService_upvr (readonly)
		[14]: SetPlayerId_upvr (readonly)
		[15]: GetAssetsFromHumanoidDescription_upvr (readonly)
		[16]: UpdateOwnedStatus_upvr (readonly)
		[17]: SetItemBeingPurchased_upvr (readonly)
	]]
	local playerId_2 = arg1.props.playerId
	arg1.connections = {}
	local network = arg1.props.network
	if not network then
		network = Network_upvr.new()
	end
	arg1.network = network
	arg1.analytics = Analytics_upvr.new(playerId_2, arg1.props.ctx)
	arg1.humanoidDescription = arg1.props.humanoidDescription
	arg1.analytics.reportOpenInspectMenu()
	arg1.state = {
		store = Rodux_upvr.Store.new(InspectAndBuyReducer_upvr, {}, {Thunk_upvr.middleware({
			[Network_upvr] = arg1.network;
			[Analytics_upvr] = arg1.analytics;
		})});
		views = {
			[Constants_upvr.View.Compact] = CompactView_upvr;
			[Constants_upvr.View.Wide] = WideView_upvr;
			[Constants_upvr.View.WideLandscape] = WideLandscapeView_upvr;
		};
	}
	arg1.state.store:dispatch(UpdateStoreId_upvr())
	arg1.state.store:dispatch(SetPlayerName_upvr(arg1.props.playerName))
	arg1.state.store:dispatch(SetLocale_upvr(LocalizationService_upvr.RobloxLocaleId))
	if playerId_2 then
		arg1.state.store:dispatch(SetPlayerId_upvr(playerId_2))
	end
	if arg1.humanoidDescription then
		arg1.state.store:dispatch(GetAssetsFromHumanoidDescription_upvr(arg1.humanoidDescription, false))
	end
	function arg1.onPromptPurchaseFinished(arg1_2, arg2, arg3) -- Line 141
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: UpdateOwnedStatus_upvr (copied, readonly)
			[4]: SetItemBeingPurchased_upvr (copied, readonly)
		]]
		local itemBeingPurchased = arg1.state.store:getState().itemBeingPurchased
		arg1.analytics.sendCounter(Constants_upvr.Counters.PurchaseFinished)
		if arg3 and tostring(arg2) == itemBeingPurchased.itemId then
			arg1.analytics.reportPurchaseSuccess(itemBeingPurchased.itemType, itemBeingPurchased.itemId)
			arg1.state.store:dispatch(UpdateOwnedStatus_upvr(itemBeingPurchased.itemId, itemBeingPurchased.itemType))
			if itemBeingPurchased.itemType == Constants_upvr.ItemType.Asset then
				arg1.analytics.sendCounter(Constants_upvr.Counters.PurchaseSucceededAsset)
			elseif itemBeingPurchased.itemType == Constants_upvr.ItemType.Bundle then
				arg1.analytics.sendCounter(Constants_upvr.Counters.PurchaseSucceededBundle)
			else
				arg1.analytics.sendCounter(Constants_upvr.Counters.PurchaseSucceededOther)
			end
		end
		arg1.state.store:dispatch(SetItemBeingPurchased_upvr(nil, nil))
	end
end
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local SetIsSubjectToChinaPolicies_upvr = require(Parent.Actions.SetIsSubjectToChinaPolicies)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
local GetCharacterModelFromUserId_upvr = require(Parent.Thunks.GetCharacterModelFromUserId)
local GetPlayerName_upvr = require(Parent.Thunks.GetPlayerName)
function any_extend_result1.didMount(arg1) -- Line 161
	--[[ Upvalues[15]:
		[1]: FFlagChromeHideShortcutBarOnInspectAndBuy_upvr (readonly)
		[2]: FFlagChromeEnabledShortcutBarFix_upvr (readonly)
		[3]: Enabled_upvr_2_upvr (readonly)
		[4]: Enabled_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
		[7]: SetLocale_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: CachedPolicyService_upvr (readonly)
		[10]: SetIsSubjectToChinaPolicies_upvr (readonly)
		[11]: MarketplaceService_upvr (readonly)
		[12]: Players_upvr (readonly)
		[13]: GetCharacterModelFromUserId_upvr (readonly)
		[14]: GetAssetsFromHumanoidDescription_upvr (readonly)
		[15]: GetPlayerName_upvr (readonly)
	]]
	local playerId = arg1.props.playerId
	arg1.isMounted = true
	arg1:updateView()
	arg1:bindButtonB()
	arg1:configureInputType()
	arg1:pushMouseIconOverride()
	local var54 = FFlagChromeHideShortcutBarOnInspectAndBuy_upvr
	if var54 then
		if FFlagChromeEnabledShortcutBarFix_upvr then
			var54 = Enabled_upvr_2_upvr()
		else
			var54 = Enabled_upvr_2_upvr
		end
		if var54 then
			var54 = Enabled_upvr:setHideShortcutBar
			var54("InspectAndBuy", true)
		end
	end
	coroutine.wrap(function() -- Line 196
		--[[ Upvalues[3]:
			[1]: CachedPolicyService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: SetIsSubjectToChinaPolicies_upvr (copied, readonly)
		]]
		arg1.state.store:dispatch(SetIsSubjectToChinaPolicies_upvr(CachedPolicyService_upvr:IsSubjectToChinaPolicies()))
	end)()
	table.insert(arg1.connections, workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 179
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:updateView()
	end))
	table.insert(arg1.connections, LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function() -- Line 183
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetLocale_upvr (copied, readonly)
			[3]: LocalizationService_upvr (copied, readonly)
		]]
		arg1.state.store:dispatch(SetLocale_upvr(LocalizationService_upvr.RobloxLocaleId))
	end))
	table.insert(arg1.connections, GuiService_upvr.MenuOpened:Connect(function() -- Line 187
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		arg1:popMouseIconOverride()
		GuiService_upvr.SelectedCoreObject = nil
	end))
	table.insert(arg1.connections, GuiService_upvr.MenuClosed:Connect(function() -- Line 192
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:pushMouseIconOverride()
	end))
	table.insert(arg1.connections, UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1_3) -- Line 173
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:configureInputType(arg1_3)
	end))
	table.insert(arg1.connections, MarketplaceService_upvr.PromptPurchaseFinished:Connect(arg1.onPromptPurchaseFinished))
	table.insert(arg1.connections, MarketplaceService_upvr.PromptBundlePurchaseFinished:Connect(arg1.onPromptPurchaseFinished))
	table.insert(arg1.connections, arg1.state.store.changed:connect(function(arg1_4, arg2) -- Line 209
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:update(arg1_4, arg2)
	end))
	arg1.state.store:dispatch(GetCharacterModelFromUserId_upvr(Players_upvr.LocalPlayer.UserId, true, function(arg1_5) -- Line 223
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GetAssetsFromHumanoidDescription_upvr (copied, readonly)
		]]
		if arg1 and arg1.isMounted then
			arg1.localPlayerModel = arg1_5
			local HumanoidDescription = arg1_5.Humanoid.HumanoidDescription
			if HumanoidDescription then
				arg1.state.store:dispatch(GetAssetsFromHumanoidDescription_upvr(HumanoidDescription, true))
			end
			arg1:setState({
				obtainedLocalPlayerModel = true;
			})
		end
	end))
	if playerId then
		arg1.state.store:dispatch(GetCharacterModelFromUserId_upvr(playerId, false, function(arg1_6) -- Line 239
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetAssetsFromHumanoidDescription_upvr (copied, readonly)
			]]
			if arg1 and arg1.isMounted then
				arg1.playerModel = arg1_6
				local HumanoidDescription_2 = arg1.playerModel.Humanoid.HumanoidDescription
				if HumanoidDescription_2 then
					arg1.state.store:dispatch(GetAssetsFromHumanoidDescription_upvr(HumanoidDescription_2, false))
				end
				arg1:setState({
					obtainedPlayerModel = true;
				})
			end
		end))
		arg1.state.store:dispatch(GetPlayerName_upvr(playerId))
	end
end
function any_extend_result1.update(arg1, arg2, arg3) -- Line 258
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if not arg2.visible and arg3.visible then
		ContextActionService_upvr:UnbindCoreAction("BackButtonInspectMenu")
	elseif arg2.visible and not arg3.visible then
		arg1:bindButtonB()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 266
	--[[ Upvalues[5]:
		[1]: ContextActionService_upvr (readonly)
		[2]: FFlagChromeHideShortcutBarOnInspectAndBuy_upvr (readonly)
		[3]: FFlagChromeEnabledShortcutBarFix_upvr (readonly)
		[4]: Enabled_upvr_2_upvr (readonly)
		[5]: Enabled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.isMounted = false
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1.connections)
	local var79
	for i, v in var79, pairs_result2, pairs_result3 do
		v:disconnect()
	end
	var79 = ContextActionService_upvr:UnbindCoreAction
	var79("BackButtonInspectMenu")
	var79 = arg1:popMouseIconOverride
	var79()
	var79 = FFlagChromeHideShortcutBarOnInspectAndBuy_upvr
	if var79 then
		if FFlagChromeEnabledShortcutBarFix_upvr then
			var79 = Enabled_upvr_2_upvr()
		else
			var79 = Enabled_upvr_2_upvr
		end
		if var79 then
			var79 = Enabled_upvr
			i = false
			var79 = var79:setHideShortcutBar
			var79("InspectAndBuy", i)
		end
	end
end
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local renderWithCoreScriptsStyleProvider_upvr = require(CoreGui.RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
local SelectionCursorProvider_upvr = require(CorePackages.Packages.UIBlox).App.SelectionImage.SelectionCursorProvider
local Container_upvr = require(Parent.Components.Container)
function any_extend_result1.render(arg1) -- Line 280
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[5]: SelectionCursorProvider_upvr (readonly)
		[6]: Container_upvr (readonly)
	]]
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Provider, {
		value = arg1.state.views;
	}, {
		StoreProvider = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = arg1.state.store;
		}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
				CursorProvider = Roact_upvr.createElement(SelectionCursorProvider_upvr, {}, {
					Container = Roact_upvr.createElement(Container_upvr, {
						localPlayerModel = arg1.localPlayerModel;
					});
				});
			});
		});
	})
end
local CloseOverlay_upvr = require(Parent.Actions.CloseOverlay)
local SetDetailsInformation_upvr = require(Parent.Actions.SetDetailsInformation)
local SetTryingOnInfo_upvr = require(Parent.Actions.SetTryingOnInfo)
function any_extend_result1.bindButtonB(arg1) -- Line 300
	--[[ Upvalues[5]:
		[1]: ContextActionService_upvr (readonly)
		[2]: CloseOverlay_upvr (readonly)
		[3]: SetDetailsInformation_upvr (readonly)
		[4]: SetTryingOnInfo_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("BackButtonInspectMenu", function(arg1_7, arg2, arg3) -- Line 301
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: CloseOverlay_upvr (copied, readonly)
			[3]: SetDetailsInformation_upvr (copied, readonly)
			[4]: SetTryingOnInfo_upvr (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
		]]
		if arg2 == Enum.UserInputState.End and arg3.KeyCode == Enum.KeyCode.ButtonB then
			local any_getState_result1 = arg1.state.store:getState()
			if any_getState_result1.overlay and any_getState_result1.overlay.overlay ~= nil then
				arg1.state.store:dispatch(CloseOverlay_upvr())
			elseif any_getState_result1.detailsInformation.viewingDetails then
				arg1.state.store:dispatch(SetDetailsInformation_upvr(false, nil))
				arg1.state.store:dispatch(SetTryingOnInfo_upvr(false, nil))
			else
				GuiService_upvr:CloseInspectMenu()
			end
		elseif arg2 == Enum.UserInputState.Begin and arg3.KeyCode == Enum.KeyCode.Escape or arg3.KeyCode == Enum.KeyCode.ButtonStart then
			GuiService_upvr:CloseInspectMenu()
			return Enum.ContextActionResult.Pass
		end
		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape, Enum.KeyCode.ButtonStart)
end
return any_extend_result1