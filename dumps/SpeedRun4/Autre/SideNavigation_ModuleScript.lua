-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:58
-- Luau version 6, Types version 3
-- Time taken: 0.011866 seconds

local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Parent = script.Parent.Parent
local ZonePortal_upvr = require(Parent.Components.ZonePortal)
local Constants_upvr = require(Parent.Resources.Constants)
local Direction_upvr = require(Parent.Enums.Direction)
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SideNavigation")
local tbl = {
	open = t.boolean;
	closeMenu = t.callback;
	goToHomePage = t.callback;
	goToSystemMenu = t.callback;
	currentPage = t.string;
	canCaptureFocus = t.optional(t.boolean);
}
local var54
local function INLINED() -- Internal function, doesn't exist in bytecode
	var54 = t.optional(t.number)
	return var54
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	var54 = nil
end
tbl.currentZone = var54
var54 = t.optional(t.boolean)
tbl.enableInGameHomeIcon = var54
any_extend_result1.validateProps = t.strictInterface(tbl)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
function any_extend_result1.init(arg1) -- Line 51
	--[[ Upvalues[4]:
		[1]: ControlState_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	function arg1.controlStateUpdated(arg1_2, arg2) -- Line 52
		--[[ Upvalues[3]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if arg1_2 == ControlState_upvr.Hover and arg2 ~= ControlState_upvr.Hover and arg1.props.currentPage == Constants_upvr.InitalPageKey then
			arg1.props.closeMenu()
		end
	end
	arg1.firstItemRef = Roact_upvr.createRef()
	function arg1.onContainerRendered(arg1_3) -- Line 62
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (copied, readonly)
		]]
		if arg1_3 then
			GuiService_upvr:RemoveSelectionGroup("SideNavigation_IGMSelectionGroup")
			GuiService_upvr:AddSelectionParent("SideNavigation_IGMSelectionGroup", arg1_3)
		end
	end
end
local CloseMenuButton_upvr = require(script.CloseMenuButton)
local FocusHandler_upvr = require(Parent.Components.Connection.FocusHandler)
function any_extend_result1.oldRender(arg1) -- Line 71
	--[[ Upvalues[9]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CloseMenuButton_upvr (readonly)
		[5]: FocusHandler_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ZonePortal_upvr (readonly)
		[9]: Direction_upvr (readonly)
	]]
	local var20_upvw
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local var21 = true
		if arg1.props.currentZone == 0 then
			var21 = not arg1.props.open
		end
		var20_upvw = var21
	end
	return withStyle_upvr(function(arg1_4) -- Line 77
		--[[ Upvalues[10]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CloseMenuButton_upvr (copied, readonly)
			[4]: FocusHandler_upvr (copied, readonly)
			[5]: var20_upvw (read and write)
			[6]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[7]: GuiService_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
			[9]: ZonePortal_upvr (copied, readonly)
			[10]: Direction_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_3 = {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 1);
			});
			CloseMenuButton = Roact_upvr.createElement(CloseMenuButton_upvr, {
				onActivated = arg1.props.closeMenu;
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.new(0.5, 0, 0, 4);
				[Roact_upvr.Ref] = arg1.firstItemRef;
			});
		}
		local tbl_3 = {
			isFocused = arg1.props.canCaptureFocus;
			shouldForgetPreviousSelection = var20_upvw;
		}
		local var31
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			function var31(arg1_5) -- Line 102
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				local var30 = arg1_5
				if not var30 then
					var30 = arg1.firstItemRef:getValue()
				end
				GuiService_upvr.SelectedCoreObject = var30
			end
			return var31
		end
		if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
			function var31() -- Line 104
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				GuiService_upvr.SelectedCoreObject = arg1.firstItemRef:getValue()
			end
		end
		tbl_3.didFocus = var31
		module_3.FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, tbl_3)
		var31 = arg1
		var31 = Constants_upvr
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			tbl_7.direction = var31
			var31 = Direction_upvr.Right
			tbl_7.targetZone = var31
			var31 = 1
			local tbl_7 = {}
			return Roact_upvr.createElement(ZonePortal_upvr, tbl_7)
		end
		if var31.props.currentPage == var31.InitalPageKey or not INLINED_3() then
		end
		module_3.ZonePortal = nil
		return Roact_upvr.createElement("TextButton", {
			AutoButtonColor = false;
			Text = "";
			BackgroundColor3 = arg1_4.Theme.BackgroundUIContrast.Color;
			BackgroundTransparency = arg1_4.Theme.BackgroundUIContrast.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(0, 64, 1, 0);
			Visible = arg1.props.open;
			Selectable = false;
			[Roact_upvr.Ref] = arg1.onContainerRendered;
		}, module_3)
	end)
end
local SystemMenuButton_upvr = require(script.SystemMenuButton)
local HomeButton_upvr = require(script.HomeButton)
local Interactable_upvr = UIBlox.Core.Control.Interactable
function any_extend_result1.newRender(arg1) -- Line 116
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: SystemMenuButton_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: HomeButton_upvr (readonly)
		[5]: ZonePortal_upvr (readonly)
		[6]: Direction_upvr (readonly)
		[7]: withStyle_upvr (readonly)
		[8]: Interactable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local currentPage = arg1.props.currentPage
	local tbl_4 = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 4);
		});
	}
	local tbl_6 = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	}
	local udim = UDim.new(0, 4)
	tbl_6.Padding = udim
	tbl_4.Layout = Roact_upvr.createElement("UIListLayout", tbl_6)
	local tbl_5 = {}
	if currentPage ~= Constants_upvr.MainPagePageKey then
		udim = false
	else
		udim = true
	end
	tbl_5.on = udim
	udim = arg1.props.closeMenu
	tbl_5.onClose = udim
	udim = arg1.props.goToSystemMenu
	tbl_5.onActivated = udim
	udim = 1
	tbl_5.layoutOrder = udim
	udim = Vector2.new(0.5, 0)
	tbl_5.anchorPoint = udim
	udim = UDim2.new(0.5, 0, 0, 4)
	tbl_5.position = udim
	udim = arg1.props.canCaptureFocus
	tbl_5.canCaptureFocus = udim
	tbl_4.SystemMenuButton = Roact_upvr.createElement(SystemMenuButton_upvr, tbl_5)
	local tbl_2 = {}
	if currentPage ~= Constants_upvr.LeaveToAppPromptPageKey then
		udim = false
	else
		udim = true
	end
	tbl_2.on = udim
	udim = arg1.props.goToHomePage
	tbl_2.onActivated = udim
	udim = 2
	tbl_2.layoutOrder = udim
	udim = Vector2.new(0.5, 0)
	tbl_2.anchorPoint = udim
	udim = UDim2.new(0.5, 0, 0, 8)
	tbl_2.position = udim
	tbl_4.HomeButton = Roact_upvr.createElement(HomeButton_upvr, tbl_2)
	local module_2_upvr = {}
	udim = {}
	udim.PaddingTop = UDim.new(0, 1)
	module_2_upvr.Padding = Roact_upvr.createElement("UIPadding", udim)
	udim = {}
	udim.Size = UDim2.fromScale(1, 1)
	udim.BackgroundTransparency = 1
	udim.Selectable = false
	module_2_upvr.Content = Roact_upvr.createElement("Frame", udim, tbl_4)
	udim = arg1.props
	udim = Constants_upvr.InitalPageKey
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		udim.direction = Direction_upvr.Right
		udim.targetZone = 1
		udim = {}
		return Roact_upvr.createElement(ZonePortal_upvr, udim)
	end
	if udim.currentPage == udim or not INLINED_4() then
	end
	module_2_upvr.ZonePortal = nil
	return withStyle_upvr(function(arg1_6) -- Line 162
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Interactable_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: module_2_upvr (readonly)
		]]
		return Roact_upvr.createElement(Interactable_upvr, {
			onStateChanged = arg1.controlStateUpdated;
			AutoButtonColor = false;
			BackgroundColor3 = arg1_6.Theme.BackgroundUIContrast.Color;
			BackgroundTransparency = arg1_6.Theme.BackgroundUIContrast.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(0, 64, 1, 0);
			Visible = arg1.props.open;
			Selectable = false;
			[Roact_upvr.Ref] = arg1.onContainerRendered;
		}, module_2_upvr)
	end)
end
function any_extend_result1.render(arg1) -- Line 178
	if arg1.props.enableInGameHomeIcon then
		return arg1:newRender()
	end
	return arg1:oldRender()
end
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
function var54(arg1) -- Line 208
	--[[ Upvalues[3]:
		[1]: CloseMenu_upvr (readonly)
		[2]: SetCurrentPage_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return {
		closeMenu = function() -- Line 210, Named "closeMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
		goToSystemMenu = function() -- Line 213, Named "goToSystemMenu"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(Constants_upvr.MainPagePageKey))
		end;
		goToHomePage = function() -- Line 216, Named "goToHomePage"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(Constants_upvr.LeaveToAppPromptPageKey))
		end;
	}
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 191
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isMenuOpen = arg1.isMenuOpen
	if isMenuOpen then
		isMenuOpen = not arg1.respawn.dialogOpen
		if isMenuOpen then
			isMenuOpen = false
			if arg1.displayOptions.inputType == Constants_upvr.InputType.Gamepad then
				if arg1.currentZone ~= 0 then
					isMenuOpen = false
				else
					isMenuOpen = true
				end
			end
		end
	end
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
	end
	return {
		canCaptureFocus = isMenuOpen;
		currentPage = arg1.menuPage;
		open = arg1.isMenuOpen;
		currentZone = arg1.currentZone;
	}
end, var54)(require(Parent.InGameMenuPolicy).connect(function(arg1, arg2) -- Line 185
	return {
		enableInGameHomeIcon = arg1.enableInGameHomeIcon();
	}
end)(any_extend_result1))