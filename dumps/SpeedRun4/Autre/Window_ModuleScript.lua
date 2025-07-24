-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:07
-- Luau version 6, Types version 3
-- Time taken: 0.016337 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local Packages = CorePackages.Packages
local LuauPolyfill = require(Packages.LuauPolyfill)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Chrome = script.Parent.Parent.Parent.Chrome
local Enabled_upvr = Chrome.Enabled
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences() then
	if require(Enabled_upvr)() then
		Enabled_upvr = require(Chrome.Service)
	else
		Enabled_upvr = nil
	end
else
	Enabled_upvr = require(script.Parent.Parent.Parent.Chrome.Service)
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAppPolicy_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useCameraOn_upvr = require(script.Parent.Parent.Hooks.useCameraOn)
local useTrackerMessage_upvr = require(script.Parent.Parent.Hooks.useTrackerMessage)
local useWindowSizeIsLarge_upvr = require(script.Parent.Parent.Parent.Chrome.ChromeShared.Hooks.useWindowSizeIsLarge)
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local SizingUtils_upvr = require(script.Parent.Parent.Utils.SizingUtils)
local React_upvr = require(Packages.React)
local useLocalPlayer_upvr = require(script.Parent.Parent.Hooks.useLocalPlayer)
local FaceChatUtils_upvr = require(script.Parent.Parent.Utils.FaceChatUtils)
local useTooltipDismissal_upvr = require(script.Parent.Parent.Hooks.useTooltipDismissal)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local setTimeout_upvr = LuauPolyfill.setTimeout
local ModelUtils_upvr = require(script.Parent.Parent.Utils.ModelUtils)
local any_new_result1_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.SelfView.Analytics).new()
local FaceClone_upvr = require(script.Parent.FaceClone)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local Interactable_upvr = UIBlox.Core.Control.Interactable
local CameraStatusIcon_upvr = require(script.Parent.CameraStatusIcon)
local Constants_upvr = require(script.Parent.Parent.Parent.Chrome.ChromeShared.Unibar.Constants)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_actions_previewShrink_upvr = Images["icons/actions/previewShrink"]
local icons_actions_previewExpand_upvr = Images["icons/actions/previewExpand"]
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SelfieViewReducedCornerWidth", true)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local CameraStatusDot_upvr = require(script.Parent.CameraStatusDot)
return function(arg1) -- Line 74, Named "Window"
	--[[ Upvalues[31]:
		[1]: useStyle_upvr (readonly)
		[2]: useAppPolicy_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: useCameraOn_upvr (readonly)
		[5]: useTrackerMessage_upvr (readonly)
		[6]: useWindowSizeIsLarge_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: SizingUtils_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: useLocalPlayer_upvr (readonly)
		[11]: FaceChatUtils_upvr (readonly)
		[12]: useTooltipDismissal_upvr (readonly)
		[13]: clearTimeout_upvr (readonly)
		[14]: setTimeout_upvr (readonly)
		[15]: ModelUtils_upvr (readonly)
		[16]: any_new_result1_upvr (readonly)
		[17]: FaceClone_upvr (readonly)
		[18]: ControlState_upvr (readonly)
		[19]: Interactable_upvr (readonly)
		[20]: CameraStatusIcon_upvr (readonly)
		[21]: Constants_upvr (readonly)
		[22]: Enabled_upvr (readonly)
		[23]: ImageSetLabel_upvr (readonly)
		[24]: icons_actions_previewShrink_upvr (readonly)
		[25]: icons_actions_previewExpand_upvr (readonly)
		[26]: game_DefineFastFlag_result1_upvr (readonly)
		[27]: StyledTextLabel_upvr (readonly)
		[28]: withTooltip_upvr (readonly)
		[29]: CoreGui_upvr (readonly)
		[30]: TooltipOrientation_upvr (readonly)
		[31]: CameraStatusDot_upvr (readonly)
	]]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local Theme = useStyle_upvr_result1_upvr.Theme
	local Font = useStyle_upvr_result1_upvr.Font
	local tbl_12 = {}
	local var43 = "CoreScripts.TopBar.RobloxPermissionErrorHeader"
	tbl_12.robloxPermissionErrorHeader = var43
	local var44
	if useAppPolicy_upvr(function(arg1_2) -- Line 80
		return arg1_2.getShowUpdatedCameraPath()
	end) then
		var43 = "CoreScripts.TopBar.RobloxPermissionErrorBodyTwo"
	else
		var43 = "CoreScripts.TopBar.RobloxPermissionErrorBody"
	end
	tbl_12.robloxPermissionErrorBody = var43
	tbl_12.dynamicAvatarMissingErrorHeader = "CoreScripts.TopBar.DynamicAvatarMissingErrorHeader"
	tbl_12.dynamicAvatarMissingErrorBody = "CoreScripts.TopBar.DynamicAvatarMissingErrorBody"
	local var11_result1_upvr = useLocalization_upvr(tbl_12)
	local var13_result1 = useTrackerMessage_upvr()
	local var14_result1_upvr = useWindowSizeIsLarge_upvr(arg1.windowSize)
	local var15_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 98
		--[[ Upvalues[2]:
			[1]: SizingUtils_upvr (copied, readonly)
			[2]: var14_result1_upvr (readonly)
		]]
		return SizingUtils_upvr.getSize(arg1_3.displayOptions.screenSize, var14_result1_upvr)
	end)
	React_upvr.useEffect(function() -- Line 101
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var15_result1_upvr (readonly)
		]]
		arg1.windowSize:requestSize(var15_result1_upvr.X, var15_result1_upvr.Y)
	end, {var15_result1_upvr})
	local useLocalPlayer_upvr_result1_upvr = useLocalPlayer_upvr()
	local var20_result1, var20_result2, var20_result3, var20_result4_upvr = useTooltipDismissal_upvr(2000)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(true)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local function var68() -- Line 120
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: clearTimeout_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: setTimeout_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current then
			clearTimeout_upvr(any_useRef_result1_upvr.current)
		end
		any_useState_result2_upvr_2(true)
		any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 125
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useState_result2_upvr_2(false)
		end, 2000)
	end
	React_upvr.useEffect(function() -- Line 129
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: clearTimeout_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: setTimeout_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current then
			clearTimeout_upvr(any_useRef_result1_upvr.current)
		end
		any_useState_result2_upvr_2(true)
		any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 125
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useState_result2_upvr_2(false)
		end, 2000)
		return function() -- Line 132
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: clearTimeout_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				clearTimeout_upvr(any_useRef_result1_upvr.current)
			end
		end
	end, {any_useRef_result1_upvr})
	local function var74_upvr(arg1_4) -- Line 139
		--[[ Upvalues[10]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: clearTimeout_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: FaceChatUtils_upvr (copied, readonly)
			[6]: var20_result4_upvr (readonly)
			[7]: var11_result1_upvr (readonly)
			[8]: useLocalPlayer_upvr_result1_upvr (readonly)
			[9]: ModelUtils_upvr (copied, readonly)
			[10]: any_new_result1_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current then
			clearTimeout_upvr(any_useRef_result1_upvr.current)
		end
		any_useState_result2_upvr_2(true)
		any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 125
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useState_result2_upvr_2(false)
		end, 2000)
		if not FaceChatUtils_upvr.getPermissions().userCamEnabled and not arg1_4 then
			var20_result4_upvr(var11_result1_upvr.robloxPermissionErrorHeader, var11_result1_upvr.robloxPermissionErrorBody)
		else
			if useLocalPlayer_upvr_result1_upvr.Character and not ModelUtils_upvr.hasDynamicHead(useLocalPlayer_upvr_result1_upvr.Character) and not FaceChatUtils_upvr.isCameraOn() and not arg1_4 then
				var20_result4_upvr(var11_result1_upvr.dynamicAvatarMissingErrorHeader, var11_result1_upvr.dynamicAvatarMissingErrorBody)
			end
			any_new_result1_upvr:setLastCtx("SelfView")
			FaceChatUtils_upvr.toggleVideoAnimation()
		end
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 157
		--[[ Upvalues[1]:
			[1]: var74_upvr (readonly)
		]]
		var74_upvr(false)
	end, {FaceChatUtils_upvr, ModelUtils_upvr, var11_result1_upvr, useLocalPlayer_upvr_result1_upvr})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 166
		--[[ Upvalues[3]:
			[1]: FaceClone_upvr (copied, readonly)
			[2]: useLocalPlayer_upvr_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
		]]
		if _G.__TESTEZ_RUNNING_TEST__ then return end
		local FaceClone_upvr_result1_upvr = FaceClone_upvr(useLocalPlayer_upvr_result1_upvr, any_useRef_result1_upvr_2.current)
		return function() -- Line 177
			--[[ Upvalues[1]:
				[1]: FaceClone_upvr_result1_upvr (readonly)
			]]
			if FaceClone_upvr_result1_upvr then
				FaceClone_upvr_result1_upvr()
			end
		end
	end, {useLocalPlayer_upvr_result1_upvr, any_useRef_result1_upvr_2})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5, arg2) -- Line 184
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: ControlState_upvr (copied, readonly)
		]]
		local var88
		if arg2 ~= ControlState_upvr.Hover then
			var88 = false
		else
			var88 = true
		end
		any_useState_result2_upvr_3(var88)
	end, {any_useState_result2_upvr_3})
	local module_3 = {
		Name = "SelfieViewFrame";
		Active = true;
	}
	var44 = 1
	module_3.Size = UDim2.fromScale(1, var44)
	var44 = useStyle_upvr_result1_upvr.Theme
	module_3.BackgroundColor3 = var44.BackgroundUIDefault.Color
	module_3.BackgroundTransparency = 0
	var44 = React_upvr
	module_3[var44.Event.MouseEnter] = var68
	var44 = React_upvr
	module_3[var44.Event.MouseMoved] = var68
	module_3.ref = any_useRef_result1_upvr_2
	local module_2 = {}
	var44 = any_useState_result1_2
	if var44 then
		var44 = React_upvr.createElement
		local tbl_6 = {
			CloseButtonLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
		}
		local tbl_16 = {}
		local udim2_2 = UDim2.fromOffset(36, 36)
		tbl_16.Size = udim2_2
		if any_useState_result1_3 then
			udim2_2 = useStyle_upvr_result1_upvr.Theme.BackgroundOnHover.Color
		else
			udim2_2 = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Color
		end
		tbl_16.BackgroundColor3 = udim2_2
		tbl_16.BackgroundTransparency = 0.8
		tbl_16.onStateChanged = React_upvr.useCallback(function(arg1_6, arg2) -- Line 188
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: ControlState_upvr (copied, readonly)
			]]
			local var92
			if arg2 ~= ControlState_upvr.Hover then
				var92 = false
			else
				var92 = true
			end
			any_useState_result2_upvr(var92)
		end, {any_useState_result2_upvr})
		local Event_2 = React_upvr.Event
		if Enabled_upvr then
			local id_upvr = arg1.id
			function Event_2() -- Line 251
				--[[ Upvalues[2]:
					[1]: Enabled_upvr (copied, readonly)
					[2]: id_upvr (readonly)
				]]
				Enabled_upvr:toggleWindow(id_upvr)
			end
		else
			Event_2 = nil
		end
		tbl_16[Event_2.Activated] = Event_2
		tbl_6.CloseButtonInteractable = React_upvr.createElement(Interactable_upvr, tbl_16, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			Fragment = React_upvr.createElement(React_upvr.Fragment, nil, {React_upvr.createElement("Frame", {
				Name = "X1";
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Size = UDim2.new(0, 16, 0, 2);
				BorderSizePixel = 0;
				BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Color;
				BackgroundTransparency = 0;
				Rotation = 45;
			}, {
				Corner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0);
				});
			}), React_upvr.createElement("Frame", {
				Name = "X2";
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Size = UDim2.new(0, 16, 0, 2);
				BorderSizePixel = 0;
				BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Color;
				BackgroundTransparency = 0;
				Rotation = -45;
			}, {
				Corner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0);
				});
			})});
		})
		var44 = var44("Frame", {
			ZIndex = 2;
			BackgroundTransparency = 1;
			Size = Constants_upvr.CLOSE_BUTTON_FRAME;
		}, tbl_6)
	end
	module_2.CloseButtonWrapper = var44
	local var123
	if any_useState_result1_2 then
		var44 = React_upvr.createElement
		local tbl_5 = {
			ExpandButtonLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			ExpandButtonPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 4);
				PaddingLeft = UDim.new(0, 4);
				PaddingRight = UDim.new(0, 4);
				PaddingBottom = UDim.new(0, 4);
			});
		}
		local tbl_15 = {}
		local udim2 = UDim2.fromOffset(36, 36)
		tbl_15.Size = udim2
		if any_useState_result1 then
			udim2 = useStyle_upvr_result1_upvr.Theme.BackgroundOnHover.Color
		else
			udim2 = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Color
		end
		tbl_15.BackgroundColor3 = udim2
		tbl_15.BackgroundTransparency = 0.8
		tbl_15.onStateChanged = React_upvr.useCallback(function(arg1_7, arg2) -- Line 192
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_4 (readonly)
				[2]: ControlState_upvr (copied, readonly)
			]]
			local var95
			if arg2 ~= ControlState_upvr.Hover then
				var95 = false
			else
				var95 = true
			end
			any_useState_result2_upvr_4(var95)
		end, {any_useState_result2_upvr_4})
		local Event = React_upvr.Event
		if Enabled_upvr then
			function Event() -- Line 321
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.windowSize:toggleIsLarge()
			end
		else
			Event = nil
		end
		tbl_15[Event.Activated] = Event
		local tbl_11 = {}
		local tbl_14 = {}
		var123 = UDim.new(1, 0)
		tbl_14.CornerRadius = var123
		tbl_11.Corner = React_upvr.createElement("UICorner", tbl_14)
		local tbl_2 = {}
		var123 = Vector2.new(0.5, 0.5)
		tbl_2.AnchorPoint = var123
		var123 = 1
		tbl_2.BackgroundTransparency = var123
		var123 = UDim2.fromOffset(28, 28)
		tbl_2.Size = var123
		var123 = UDim2.new(0.5, 0, 0.5, 0)
		tbl_2.Position = var123
		if var14_result1_upvr then
			var123 = icons_actions_previewShrink_upvr
		else
			var123 = icons_actions_previewExpand_upvr
		end
		tbl_2.Image = var123
		var123 = Theme.TextEmphasis.Color
		tbl_2.ImageColor3 = var123
		var123 = Theme.TextEmphasis.Transparency
		tbl_2.ImageTransparency = var123
		tbl_11.ExpandImage = React_upvr.createElement(ImageSetLabel_upvr, tbl_2)
		tbl_5.ExpandButtonInteractable = React_upvr.createElement(Interactable_upvr, tbl_15, tbl_11)
		var44 = var44("Frame", {
			ZIndex = 2;
			BackgroundTransparency = 1;
			Size = Constants_upvr.CLOSE_BUTTON_FRAME;
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, 0, 0, 0);
		}, tbl_5)
	else
		var44 = nil
	end
	module_2.ExpandButtonWrapper = var44
	var44 = React_upvr.createElement
	local tbl_13 = {}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [766] #559
	end
	tbl_13.CornerRadius = UDim.new(0, 20)
	var44 = var44("UICorner", tbl_13)
	module_2.Corners = var44
	var44 = React_upvr.createElement
	var44 = var44("Frame", {
		AnchorPoint = Vector2.new(0.5, 1);
		Position = UDim2.new(0.5, 0, 1, -44);
		BackgroundColor3 = Theme.BackgroundUIDefault.Color;
		AutomaticSize = Enum.AutomaticSize.XY;
		ZIndex = 2;
		BorderSizePixel = 0;
		Visible = var13_result1.visible;
	}, {
		Corners = React_upvr.createElement("UICorner", {});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 4);
			PaddingRight = UDim.new(0, 8);
			PaddingBottom = UDim.new(0, 4);
			PaddingLeft = UDim.new(0, 8);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
		});
		Line1 = React_upvr.createElement(StyledTextLabel_upvr, {
			text = var13_result1.text;
			fontStyle = Font.Footer;
			colorStyle = Theme.TextDefault;
			textXAlignment = Enum.TextXAlignment.Center;
			layoutOrder = 1;
			size = UDim2.fromOffset(46, 36);
			TextWrapped = true;
		});
		Line2 = React_upvr.createElement(StyledTextLabel_upvr, {
			text = var13_result1.status;
			fontStyle = Font.Footer;
			colorStyle = Theme.ContextualPrimaryContent;
			textXAlignment = Enum.TextXAlignment.Center;
			layoutOrder = 2;
			size = UDim2.fromOffset(46, 12);
			automaticSize = Enum.AutomaticSize.Y;
		});
	})
	module_2.ControlMessage = var44
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var44 = var44("Frame", tbl_17, tbl_3)
		tbl_3.Hover = React_upvr.createElement("Frame", tbl_8, tbl_4)
		tbl_4.Corner = React_upvr.createElement("UICorner", tbl_7)
		tbl_7.CornerRadius = UDim.new(0, 8)
		local tbl_7 = {}
		local tbl_4 = {}
		tbl_8.BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.BackgroundOnHover.Color
		tbl_8.BackgroundTransparency = useStyle_upvr_result1_upvr.Theme.BackgroundOnHover.Transparency
		tbl_8.Position = UDim2.fromScale(0.5, 0.5)
		tbl_8.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_8.Size = UDim2.fromOffset(32, 32)
		local tbl_8 = {}
		tbl_3.Tooltip = withTooltip_upvr(tbl_10, tbl_9, React_upvr.useCallback(function(arg1_8) -- Line 196
			--[[ Upvalues[8]:
				[1]: React_upvr (copied, readonly)
				[2]: Interactable_upvr (copied, readonly)
				[3]: any_useState_result1_4_upvr (readonly)
				[4]: FaceChatUtils_upvr (copied, readonly)
				[5]: useStyle_upvr_result1_upvr (readonly)
				[6]: any_useCallback_result1_upvr (readonly)
				[7]: any_useCallback_result1_upvr_2 (readonly)
				[8]: CameraStatusIcon_upvr (copied, readonly)
			]]
			local module = {
				Size = UDim2.fromOffset(36, 36);
			}
			local var99
			if any_useState_result1_4_upvr and FaceChatUtils_upvr.getPermissions().userCamEnabled then
				var99 = useStyle_upvr_result1_upvr.Theme.BackgroundOnHover.Color
			else
				var99 = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Color
			end
			module.BackgroundColor3 = var99
			var99 = useStyle_upvr_result1_upvr.Theme.Overlay.Transparency
			module.BackgroundTransparency = var99
			var99 = any_useCallback_result1_upvr
			module.onStateChanged = var99
			var99 = UDim2.fromScale(0.5, 0.5)
			module.Position = var99
			var99 = Vector2.new(0.5, 0.5)
			module.AnchorPoint = var99
			var99 = React_upvr.Change.AbsoluteSize
			module[var99] = arg1_8
			var99 = React_upvr.Change.AbsolutePosition
			module[var99] = arg1_8
			var99 = React_upvr.Event.Activated
			module[var99] = any_useCallback_result1_upvr_2
			var99 = {}
			var99.Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			})
			local tbl = {}
			local udim2_3 = UDim2.fromOffset(28, 28)
			tbl.iconSize = udim2_3
			if not FaceChatUtils_upvr.getPermissions().userCamEnabled then
				udim2_3 = 0.5
			else
				udim2_3 = 0
			end
			tbl.transparency = udim2_3
			var99.CameraStatusIcon = React_upvr.createElement(CameraStatusIcon_upvr, tbl)
			return React_upvr.createElement(Interactable_upvr, module, var99)
		end, {any_useCallback_result1_upvr, any_useCallback_result1_upvr_2}))
		tbl_9.preferredOrientation = TooltipOrientation_upvr.Bottom
		tbl_9.DisplayOrder = 101
		tbl_9.active = var20_result3
		tbl_9.guiTarget = CoreGui_upvr
		local tbl_9 = {}
		tbl_10.textXAlignment = Enum.TextXAlignment.Left
		tbl_10.bodyText = var20_result2
		tbl_10.headerText = var20_result1
		local tbl_10 = {}
		local tbl_3 = {}
		tbl_17.ZIndex = 2
		tbl_17.AnchorPoint = Vector2.new(0.5, 1)
		tbl_17.Position = UDim2.fromScale(0.5, 1)
		tbl_17.Size = Constants_upvr.CLOSE_BUTTON_FRAME
		tbl_17.BackgroundTransparency = 1
		local tbl_17 = {}
		var44 = React_upvr.createElement
		return var44
	end
	if not any_useState_result1_2 or not React_upvr.useMemo(function() -- Line 107
		--[[ Upvalues[1]:
			[1]: FaceChatUtils_upvr (copied, readonly)
		]]
		local userCamEligible = FaceChatUtils_upvr.getPermissions().userCamEligible
		if userCamEligible then
			userCamEligible = FaceChatUtils_upvr.getPermissions().placeCamEnabled
		end
		return userCamEligible
	end) or not INLINED() then
		var44 = nil
	end
	module_2.IconFrame = var44
	if useCameraOn_upvr() then
		var44 = React_upvr.createElement
		var44 = var44(CameraStatusDot_upvr, {
			Position = UDim2.new(1, -12, 1, -12);
			ZIndex = 2;
			Size = UDim2.fromOffset(8, 8);
		})
	else
		var44 = nil
	end
	module_2.CameraStatusDot = var44
	var44 = React_upvr.createElement
	var44 = var44(Interactable_upvr, {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		[React_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 161
			--[[ Upvalues[4]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: clearTimeout_upvr (copied, readonly)
				[3]: any_useState_result2_upvr_2 (readonly)
				[4]: setTimeout_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				clearTimeout_upvr(any_useRef_result1_upvr.current)
			end
			any_useState_result2_upvr_2(true)
			any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 125
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				any_useState_result2_upvr_2(false)
			end, 2000)
		end, {var68, any_useState_result1_2, arg1.windowSize});
	})
	module_2.Interactable = var44
	return React_upvr.createElement("Frame", module_3, {}, module_2)
end