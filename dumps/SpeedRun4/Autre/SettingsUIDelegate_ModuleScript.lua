-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:55
-- Luau version 6, Types version 3
-- Time taken: 0.009224 seconds

local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages_upvr = game:GetService("CorePackages")
local VrSpatialUi = require(CorePackages_upvr.Workspace.Packages.VrSpatialUi)
local PanelType_upvr = VrSpatialUi.Constants.PanelType
local UIManager_upvr = VrSpatialUi.UIManager
local Theme_upvr = require(script.Parent.Theme)
local GetStyleTokens_upvr = require(RobloxGui_upvr.Modules.Chrome.ChromeShared.Utility.GetStyleTokens)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CoreScriptVersionEnabled")
local module_upvr_3 = {
	HUB_BAR_WIDTH = 800;
	ASPECT_RATIO = 1.3333333333333333;
}
local module_upvr = {
	BOTTOM_BUTTON_MAX_SIZE_IN_PIXEL = 233;
}
local var11_upvw
local function _() -- Line 31
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: GetStyleTokens_upvr (readonly)
	]]
	if var11_upvw == nil then
		var11_upvw = GetStyleTokens_upvr()
	end
	return var11_upvw
end
local function _(arg1, arg2, arg3, arg4) -- Line 38, Named "setFieldWithBackup"
	if arg2 ~= nil then
		arg2[arg3] = arg1[arg3]
		arg1[arg3] = arg4
	end
end
local function _(arg1, arg2, arg3) -- Line 51, Named "restoreFieldFromBackup"
	if arg2 ~= nil then
		arg1[arg3] = arg2[arg3]
	end
end
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
function module_upvr_2.new(arg1) -- Line 60
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local module = {}
	module._settingsHub = arg1
	module._originalShieldConfig = nil
	module._backgroundUICorner = nil
	module._vrEnabled = false
	module._surfaceGuiEnabledConnection = nil
	module._topBarConnection = nil
	module._userGui = nil
	module._windowsVisibilityValues = {}
	module._windowsDisconnectCallbacks = {}
	module._openVRMenuHandler = nil
	module._originalVersionTextSizes = {}
	setmetatable(module, module_upvr_2)
	return module
end
local Observable_upvr = require(CorePackages_upvr.Workspace.Packages.Observable)
local Create_upvr = require(CorePackages_upvr.Workspace.Packages.AppCommonLib).Create
function module_upvr_2.enableVR(arg1) -- Line 78
	--[[ Upvalues[6]:
		[1]: PanelType_upvr (readonly)
		[2]: UIManager_upvr (readonly)
		[3]: Observable_upvr (readonly)
		[4]: Create_upvr (readonly)
		[5]: Theme_upvr (readonly)
		[6]: RobloxGui_upvr (readonly)
	]]
	local any_createUI_result1 = UIManager_upvr.getInstance():createUI({
		panelType = PanelType_upvr.MoreMenu;
		screenGuiProps = {
			Name = "MoreMenu";
			ResetOnSpawn = false;
			DisplayOrder = -1;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		};
	})
	if any_createUI_result1 == nil then
	else
		local panelObject_upvr = any_createUI_result1.panelObject
		local any_new_result1_upvr_2 = Observable_upvr.ObservableValue.new(arg1._settingsHub.Visible)
		arg1._surfaceGuiEnabledConnection = any_new_result1_upvr_2:connect(function() -- Line 94
			--[[ Upvalues[2]:
				[1]: panelObject_upvr (readonly)
				[2]: any_new_result1_upvr_2 (readonly)
			]]
			panelObject_upvr.Enabled = any_new_result1_upvr_2:get()
		end)
		arg1:connectWindowsVisibility(any_new_result1_upvr_2)
		UIManager_upvr.getInstance():connectPanelVisibility(PanelType_upvr.MoreMenu, any_new_result1_upvr_2)
		arg1._originalShieldConfig = {}
		local ClippingShield = arg1._settingsHub.ClippingShield
		local _originalShieldConfig_6 = arg1._originalShieldConfig
		if _originalShieldConfig_6 ~= nil then
			_originalShieldConfig_6.Parent = ClippingShield.Parent
			ClippingShield.Parent = panelObject_upvr
		end
		local ClippingShield_2 = arg1._settingsHub.ClippingShield
		local _originalShieldConfig_3 = arg1._originalShieldConfig
		if _originalShieldConfig_3 ~= nil then
			_originalShieldConfig_3.Size = ClippingShield_2.Size
			ClippingShield_2.Size = UDim2.new(1, 0, 1, 0)
		end
		local ClippingShield_3 = arg1._settingsHub.ClippingShield
		local _originalShieldConfig_2 = arg1._originalShieldConfig
		if _originalShieldConfig_2 ~= nil then
			_originalShieldConfig_2.Position = ClippingShield_3.Position
			ClippingShield_3.Position = UDim2.new(0, 0, 0, 0)
		end
		if arg1._settingsHub.DarkenBackground then
			arg1._backgroundUICorner = Create_upvr("UICorner")({
				CornerRadius = Theme_upvr.MenuContainerCornerRadius;
				Parent = arg1._settingsHub.DarkenBackground;
			})
		end
		arg1._vrEnabled = true
		if arg1._topBarConnection == nil then
			local VRHub_upvr = require(RobloxGui_upvr.Modules.VR.VRHub)
			local any_new_result1_upvr = Observable_upvr.ObservableValue.new(VRHub_upvr.ShowTopBar)
			arg1._topBarConnection = VRHub_upvr.ShowTopBarChanged.Event:connect(function() -- Line 115
				--[[ Upvalues[2]:
					[1]: any_new_result1_upvr (readonly)
					[2]: VRHub_upvr (readonly)
				]]
				any_new_result1_upvr:set(VRHub_upvr.ShowTopBar)
			end)
			UIManager_upvr.getInstance():connectTopBarVisibility(any_new_result1_upvr)
			local Service = require(RobloxGui_upvr.Modules.Chrome.ChromeShared.Service)
			Service:onTriggerVRToggleButton():connect(function(arg1_2) -- Line 122
				--[[ Upvalues[1]:
					[1]: VRHub_upvr (readonly)
				]]
				VRHub_upvr:SetShowTopBar(arg1_2)
			end)
			Service:connectTopBarVisibility(any_new_result1_upvr)
		end
		VRHub_upvr = arg1:setVersionTextSize
		VRHub_upvr()
	end
end
function module_upvr_2.isInputEventNeededBySettings(arg1, arg2, arg3, arg4) -- Line 130
	--[[ Upvalues[1]:
		[1]: RobloxGui_upvr (readonly)
	]]
	if arg1._vrEnabled then
		if arg1._userGui == nil then
			arg1._userGui = require(RobloxGui_upvr.Modules.VR.UserGui)
		end
		if arg1._userGui:isInputNeededForOpenVRMenu(arg4) then
			if arg1._openVRMenuHandler == nil then
				arg1._openVRMenuHandler = arg1._userGui:getOpenVRMenuHandler()
			end
			arg1._openVRMenuHandler(arg2, arg3, arg4)
			return false
		end
		if arg4.KeyCode == Enum.KeyCode.Thumbstick2 then
			return true
		end
	end
	return false
end
function module_upvr_2.disableVR(arg1) -- Line 151
	--[[ Upvalues[2]:
		[1]: UIManager_upvr (readonly)
		[2]: PanelType_upvr (readonly)
	]]
	if not arg1._vrEnabled then
	else
		local _originalShieldConfig = arg1._originalShieldConfig
		if _originalShieldConfig ~= nil then
			arg1._settingsHub.ClippingShield.Parent = _originalShieldConfig.Parent
		end
		local _originalShieldConfig_5 = arg1._originalShieldConfig
		if _originalShieldConfig_5 ~= nil then
			arg1._settingsHub.ClippingShield.Size = _originalShieldConfig_5.Size
		end
		local _originalShieldConfig_4 = arg1._originalShieldConfig
		if _originalShieldConfig_4 ~= nil then
			arg1._settingsHub.ClippingShield.Position = _originalShieldConfig_4.Position
		end
		arg1._originalShieldConfig = nil
		if arg1._backgroundUICorner then
			arg1._backgroundUICorner.Parent = nil
			arg1._backgroundUICorner = nil
		end
		if arg1._surfaceGuiEnabledConnection ~= nil then
			arg1._surfaceGuiEnabledConnection:disconnect()
		end
		arg1._openVRMenuHandler = nil
		arg1:disconnectWindowsVisibility()
		UIManager_upvr.getInstance():disconnectPanelVisibility(PanelType_upvr.MoreMenu)
		arg1:restoreVersionTextSize()
		arg1._vrEnabled = false
	end
end
function module_upvr_2.getAspectRatio(arg1) -- Line 173
	--[[ Upvalues[3]:
		[1]: UIManager_upvr (readonly)
		[2]: PanelType_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	if arg1._vrEnabled then
		local any_getPanelSizeInPixel_result1 = UIManager_upvr.getInstance():getPanelSizeInPixel(PanelType_upvr.MoreMenu)
		return any_getPanelSizeInPixel_result1.X / any_getPanelSizeInPixel_result1.Y
	end
	return module_upvr_3.ASPECT_RATIO
end
function module_upvr_2.getHubBarSize(arg1) -- Line 182
	--[[ Upvalues[4]:
		[1]: Theme_upvr (readonly)
		[2]: UIManager_upvr (readonly)
		[3]: PanelType_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	if arg1._vrEnabled then
		local any_HubPadding_result1 = Theme_upvr.HubPadding()
		local var40
		if any_HubPadding_result1 and any_HubPadding_result1.PaddingLeft then
			var40 += any_HubPadding_result1.PaddingLeft.Offset
		end
		if any_HubPadding_result1 and any_HubPadding_result1.PaddingRight then
			var40 += any_HubPadding_result1.PaddingRight.Offset
		end
		return UIManager_upvr.getInstance():getPanelSizeInPixel(PanelType_upvr.MoreMenu).X - var40
	end
	return module_upvr_3.HUB_BAR_WIDTH
end
function module_upvr_2.getMenuContainerPositionOverride(arg1) -- Line 199
	if arg1._vrEnabled then
		return {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(0, 0, 1, 0);
			AutomaticSize = Enum.AutomaticSize.X;
		}
	end
	return nil
end
function module_upvr_2.getFullScreenSize(arg1) -- Line 212
	--[[ Upvalues[3]:
		[1]: UIManager_upvr (readonly)
		[2]: PanelType_upvr (readonly)
		[3]: RobloxGui_upvr (readonly)
	]]
	if arg1._vrEnabled then
		return UIManager_upvr.getInstance():getPanelSizeInPixel(PanelType_upvr.MoreMenu).Y
	end
	return RobloxGui_upvr.AbsoluteSize.y
end
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("SpatialUIDarkenBackgroundTransparency", 0)
function module_upvr_2.getDarkBackgroundTheme(arg1) -- Line 221
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: GetStyleTokens_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr_2 (readonly)
		[4]: Theme_upvr (readonly)
	]]
	if arg1._vrEnabled then
		if var11_upvw == nil then
			var11_upvw = GetStyleTokens_upvr()
		end
		return {
			Color = var11_upvw.Color.OverMedia.OverMedia_100.Color3;
			Transparency = math.min(math.max(game_DefineFastInt_result1_upvr_2, 0), 100) / 100;
		}
	end
	return {
		Color = Theme_upvr.color("DarkenBackground");
		Transparency = Theme_upvr.transparency("DarkenBackground");
	}
end
function module_upvr_2.getBottomButtonSize(arg1, arg2) -- Line 237
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1._vrEnabled then
		return math.min(arg2, module_upvr.BOTTOM_BUTTON_MAX_SIZE_IN_PIXEL)
	end
	return arg2
end
function module_upvr_2.updatePanelVisibility(arg1, arg2) -- Line 245
	for _, v in arg1._windowsVisibilityValues do
		if v then
			arg2:set(true)
			return
		end
	end
	arg2:set(false)
end
local function var47_upvr(arg1) -- Line 255
	--[[ Upvalues[1]:
		[1]: CorePackages_upvr (readonly)
	]]
	local any_Connect_result1_upvw_3 = require(CorePackages_upvr.Workspace.Packages.GameInvite).GameInviteModalManager.ToggleGameInviteModalEvent.Event:Connect(function(arg1_3) -- Line 258
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1("GameInvite", arg1_3)
	end)
	return function() -- Line 262
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvw_3 (read and write)
		]]
		if any_Connect_result1_upvw_3 then
			any_Connect_result1_upvw_3:Disconnect()
			any_Connect_result1_upvw_3 = nil
		end
	end
end
local function var51_upvr(arg1) -- Line 270
	local GuiService = game:GetService("GuiService")
	local any_Connect_result1_upvw_4 = GuiService.InspectPlayerFromUserIdWithCtxRequest:Connect(function() -- Line 273
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1("InspectAndBuy", true)
	end)
	local any_Connect_result1_upvw = GuiService.CloseInspectMenuRequest:Connect(function() -- Line 276
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1("InspectAndBuy", false)
	end)
	local any_Connect_result1_upvw_2 = GuiService.InspectMenuEnabledChangedSignal:Connect(function(arg1_4) -- Line 279
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1_4 then
			arg1("InspectAndBuy", false)
		end
	end)
	return function() -- Line 285
		--[[ Upvalues[3]:
			[1]: any_Connect_result1_upvw_4 (read and write)
			[2]: any_Connect_result1_upvw (read and write)
			[3]: any_Connect_result1_upvw_2 (read and write)
		]]
		if any_Connect_result1_upvw_4 then
			any_Connect_result1_upvw_4:Disconnect()
			any_Connect_result1_upvw_4 = nil
		end
		if any_Connect_result1_upvw then
			any_Connect_result1_upvw:Disconnect()
			any_Connect_result1_upvw = nil
		end
		if any_Connect_result1_upvw_2 then
			any_Connect_result1_upvw_2:Disconnect()
			any_Connect_result1_upvw_2 = nil
		end
	end
end
function module_upvr_2.connectWindowsVisibility(arg1, arg2) -- Line 301
	--[[ Upvalues[2]:
		[1]: var47_upvr (readonly)
		[2]: var51_upvr (readonly)
	]]
	local function var64(arg1_5, arg2_2) -- Line 302
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1._windowsVisibilityValues[arg1_5] = arg2_2
		arg1:updatePanelVisibility(arg2)
	end
	for _, v_2 in {function(arg1_6) -- Line 307
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_connect_result1_upvw = arg1._settingsHub.SettingsShowSignal:connect(function(arg1_7) -- Line 308
			--[[ Upvalues[1]:
				[1]: arg1_6 (readonly)
			]]
			arg1_6("SettingsHub", arg1_7)
		end)
		return function() -- Line 312
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvw (read and write)
			]]
			if any_connect_result1_upvw then
				any_connect_result1_upvw:Disconnect()
				any_connect_result1_upvw = nil
			end
		end
	end, var47_upvr, var51_upvr} do
		table.insert(arg1._windowsDisconnectCallbacks, v_2(var64))
	end
end
function module_upvr_2.disconnectWindowsVisibility(arg1) -- Line 332
	for _, v_3 in arg1._windowsDisconnectCallbacks do
		v_3()
	end
	arg1._windowsDisconnectCallbacks = {}
	arg1._windowsVisibilityValues = {}
end
function module_upvr_2.isOpenCloseAnimationAllowed(arg1) -- Line 340
	if arg1._vrEnabled then
		return false
	end
	return true
end
function module_upvr_2.getMenuContainerExtraSpace(arg1) -- Line 348
	if arg1._vrEnabled then
		local MenuContainerPadding = arg1._settingsHub.MenuContainerPadding
		return MenuContainerPadding.PaddingTop.Offset + MenuContainerPadding.PaddingBottom.Offset
	end
	return 0
end
local function _(arg1) -- Line 357, Named "refreshVersionTextLabelSize"
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	local var73 = 0.2
	if game_GetEngineFeature_result1_upvr then
		var73 = UDim2.new(0, arg1.TextBounds.X + 6, 1, 0)
	else
		var73 = UDim2.new(var73, -6, 1, 0)
	end
	arg1.Size = var73
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("SpatialUIVersionTextSizeScaled", 1400)
function module_upvr_2.setVersionTextSize(arg1) -- Line 363
	--[[ Upvalues[3]:
		[1]: Theme_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	for _, v_4 in arg1._settingsHub.VersionContainer:GetChildren(), nil do
		if v_4:IsA("TextLabel") then
			arg1._originalVersionTextSizes[v_4] = v_4.TextSize
			v_4.TextSize = Theme_upvr.textSize(game_DefineFastInt_result1_upvr / 100)
			local var79 = 0.2
			if game_GetEngineFeature_result1_upvr then
				var79 = UDim2.new(0, v_4.TextBounds.X + 6, 1, 0)
			else
				var79 = UDim2.new(var79, -6, 1, 0)
			end
			v_4.Size = var79
		end
	end
end
function module_upvr_2.restoreVersionTextSize(arg1) -- Line 374
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	for _, v_5 in arg1._settingsHub.VersionContainer:GetChildren(), nil do
		if v_5:IsA("TextLabel") and arg1._originalVersionTextSizes[v_5] then
			v_5.TextSize = arg1._originalVersionTextSizes[v_5]
			local var84 = 0.2
			if game_GetEngineFeature_result1_upvr then
				var84 = UDim2.new(0, v_5.TextBounds.X + 6, 1, 0)
			else
				var84 = UDim2.new(var84, -6, 1, 0)
			end
			v_5.Size = var84
			arg1._originalVersionTextSizes[v_5] = nil
		end
	end
	arg1._originalVersionTextSizes = {}
end
return module_upvr_2