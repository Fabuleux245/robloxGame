-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:26
-- Luau version 6, Types version 3
-- Time taken: 0.008883 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local Workspace_upvr = game:GetService("Workspace")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Actions = Parent.Actions
local Constants_upvr = require(Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmotesMenu")
function any_extend_result1.init(arg1) -- Line 39
	arg1.savedSelectedCoreObject = nil
	arg1.savedSelectedObject = nil
end
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.displayVisitShopMessage(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	arg1.props.showError(RobloxTranslator_upvr:FormatByKeyForLocale(Constants_upvr.LocalizationKeys.VisitShopToGetEmotes, arg1.props.locale))
	delay(Constants_upvr.ErrorDisplayTimeSeconds, function() -- Line 48
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.hideError()
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 53
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	ContextActionService_upvr:BindAction(Constants_upvr.ToggleMenuAction, function(arg1_2, arg2, arg3) -- Line 54, Named "toggleMenuFunc"
		--[[ Upvalues[3]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if GuiService_upvr.MenuIsOpen then
			return Enum.ContextActionResult.Pass
		end
		if UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightShift) then
			return Enum.ContextActionResult.Pass
		end
		if arg2 == Enum.UserInputState.Begin then
			if arg1.props.displayOptions.menuVisible then
				arg1.props.hideMenu()
			else
				arg1.props.openMenu()
			end
		end
		return nil
	end, false, Constants_upvr.EmoteMenuOpenKey)
end
function any_extend_result1.unbindActions(arg1) -- Line 84
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction(Constants_upvr.ToggleMenuAction)
end
function any_extend_result1.saveSelectedObject(arg1) -- Line 88
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	arg1.savedSelectedCoreObject = GuiService_upvr.SelectedCoreObject
	GuiService_upvr.SelectedCoreObject = nil
	arg1.savedSelectedObject = GuiService_upvr.SelectedObject
	GuiService_upvr.SelectedObject = nil
end
local CoreGui_upvr = game:GetService("CoreGui")
local var15_upvw
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function any_extend_result1.resetSelectedObject(arg1) -- Line 95
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
	]]
	if GuiService_upvr.SelectedCoreObject == nil then
		local var17 = true
		if arg1.savedSelectedCoreObject ~= nil then
			var17 = arg1.savedSelectedCoreObject:IsDescendantOf(CoreGui_upvr)
		end
		if var17 then
			GuiService_upvr.SelectedCoreObject = arg1.savedSelectedCoreObject
		end
	end
	var17 = GuiService_upvr.SelectedObject
	local var18
	if var18 == nil then
		var18 = var15_upvw
		if var18 == nil then
			var18 = LocalPlayer_upvr:FindFirstChildOfClass("PlayerGui")
			var15_upvw = var18
		end
		if var15_upvw then
			var18 = true
			if arg1.savedSelectedObject ~= nil then
				var18 = arg1.savedSelectedObject:IsDescendantOf(var15_upvw)
				-- KONSTANTWARNING: GOTO [51] #36
			end
		else
			var18 = false
		end
		if var18 then
			GuiService_upvr.SelectedObject = arg1.savedSelectedObject
		end
	end
end
function any_extend_result1.viewPortSizeChanged(arg1) -- Line 119
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Workspace_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	if arg1.props.layout == Constants_upvr.Layout.TenFoot then
	else
		local CurrentCamera_2 = Workspace_upvr.CurrentCamera
		if not CurrentCamera_2 then return end
		local ViewportSize = CurrentCamera_2.ViewportSize
		var19 = 1
		if ViewportSize == Vector2.new(1, var19) then return end
		var19 = Constants_upvr
		local Layout = var19.Layout
		var19 = ViewportSize.X
		if var19 >= Constants_upvr.SmallScreenMaxSize.X then
			Layout = false
		else
			Layout = true
		end
		if ViewportSize.Y >= Constants_upvr.SmallScreenMaxSize.Y then
			var19 = false
		else
			var19 = true
		end
		if Layout or var19 then
		end
		arg1.props.setLayout(Constants_upvr.Layout.Small)
	end
end
function any_extend_result1.currentCameraChanged(arg1) -- Line 147
	--[[ Upvalues[1]:
		[1]: Workspace_upvr (readonly)
	]]
	if arg1.viewportSizeChangedConn then
		arg1.viewportSizeChangedConn:Disconnect()
	end
	local CurrentCamera = Workspace_upvr.CurrentCamera
	if CurrentCamera then
		arg1.viewportSizeChangedConn = CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 154
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:viewPortSizeChanged()
		end)
		arg1:viewPortSizeChanged()
	end
end
local VRService_upvr = game:GetService("VRService")
function any_extend_result1.didMount(arg1) -- Line 161
	--[[ Upvalues[4]:
		[1]: Workspace_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	arg1.currentCameraChangedConn = Workspace_upvr:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 162
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:currentCameraChanged()
	end)
	arg1:currentCameraChanged()
	arg1.menuOpenedConn = GuiService_upvr.MenuOpened:Connect(function() -- Line 167
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: VRService_upvr (copied, readonly)
		]]
		if arg1.props.displayOptions.menuVisible and not VRService_upvr.VREnabled then
			arg1.props.hideMenu()
		end
	end)
	arg1.inputOutsideMenuConn = UserInputService_upvr.InputBegan:Connect(function(arg1_3, arg2) -- Line 173
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 then
		else
			if not arg1.props.displayOptions.menuVisible then return end
			local UserInputType = arg1_3.UserInputType
			if UserInputType == Enum.UserInputType.MouseButton1 or UserInputType == Enum.UserInputType.Touch then
				arg1.props.hideMenu()
			end
		end
	end)
	arg1:bindActions()
end
function any_extend_result1.willUnmount(arg1) -- Line 193
	arg1.currentCameraChangedConn:Disconnect()
	arg1.viewportSizeChangedConn:Disconnect()
	arg1.menuOpenedConn:Disconnect()
	arg1.inputOutsideMenuConn:Disconnect()
	arg1.currentCameraChangedConn = nil
	arg1.viewportSizeChangedConn = nil
	arg1.menuOpenedConn = nil
	arg1.inputOutsideMenuConn = nil
	arg1:unbindActions()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 207
	if arg1.props.displayOptions.menuVisible ~= arg2.displayOptions.menuVisible then
		if arg1.props.displayOptions.menuVisible then
			arg1:saveSelectedObject()
			return
		end
		arg1:resetSelectedObject()
	end
end
local EmotesWheel_upvr = require(Parent_2.EmotesWheel)
local ErrorMessage_upvr = require(Parent_2.ErrorMessage)
function any_extend_result1.render(arg1) -- Line 217
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EmotesWheel_upvr (readonly)
		[4]: ErrorMessage_upvr (readonly)
	]]
	local var32 = Constants_upvr.Layouts[arg1.props.layout]
	local guiInset = arg1.props.displayOptions.guiInset
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.new(0, 0, 0, -guiInset);
		Size = UDim2.new(1, 0, 1, guiInset);
		ZIndex = Constants_upvr.EmotesMenuZIndex;
		AutoLocalize = false;
	}, {
		Main = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = Constants_upvr.ScreenAvailable;
			BackgroundTransparency = 1;
		}, {
			AsspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1;
			});
			SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MinSize = var32.EmotesWheelMinSize;
				MaxSize = var32.EmotesWheelMaxSize;
			});
			EmotesWheel = Roact_upvr.createElement(EmotesWheel_upvr);
		});
		ErrorMessage = Roact_upvr.createElement(ErrorMessage_upvr);
	})
end
local OpenMenu_upvr = require(Parent.Thunks.OpenMenu)
local HideMenu_upvr = require(Actions.HideMenu)
local SetLayout_upvr = require(Actions.SetLayout)
local ShowError_upvr = require(Actions.ShowError)
local HideError_upvr = require(Actions.HideError)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 251, Named "mapStateToProps"
	return {
		displayOptions = arg1.displayOptions;
		emotesInfo = arg1.emotesPage.emotesInfo;
		layout = arg1.layout;
		locale = arg1.locale;
	}
end, function(arg1) -- Line 260, Named "mapDispatchToProps"
	--[[ Upvalues[5]:
		[1]: OpenMenu_upvr (readonly)
		[2]: HideMenu_upvr (readonly)
		[3]: SetLayout_upvr (readonly)
		[4]: ShowError_upvr (readonly)
		[5]: HideError_upvr (readonly)
	]]
	return {
		openMenu = function() -- Line 262, Named "openMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenMenu_upvr (copied, readonly)
			]]
			return arg1(OpenMenu_upvr())
		end;
		hideMenu = function() -- Line 266, Named "hideMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HideMenu_upvr (copied, readonly)
			]]
			return arg1(HideMenu_upvr())
		end;
		setLayout = function(arg1_4) -- Line 270, Named "setLayout"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLayout_upvr (copied, readonly)
			]]
			return arg1(SetLayout_upvr(arg1_4))
		end;
		showError = function(arg1_5) -- Line 274, Named "showError"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ShowError_upvr (copied, readonly)
			]]
			return arg1(ShowError_upvr(arg1_5))
		end;
		hideError = function() -- Line 278, Named "hideError"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HideError_upvr (copied, readonly)
			]]
			return arg1(HideError_upvr())
		end;
	}
end)(any_extend_result1)