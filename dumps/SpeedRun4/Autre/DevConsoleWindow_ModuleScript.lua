-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:09
-- Luau version 6, Types version 3
-- Time taken: 0.007832 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local setMouseVisibility_upvr = require(script.Parent.Parent.Util.setMouseVisibility)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local Actions = script.Parent.Parent.Actions
local any_extend_result1 = Roact_upvr.PureComponent:extend("DevConsoleWindow")
local function onMinimizeClicked(arg1) -- Line 30
	arg1.props.dispatchSetDevConsoleMinimized(true)
end
any_extend_result1.onMinimizeClicked = onMinimizeClicked
local function onMaximizeClicked(arg1) -- Line 34
	arg1.props.dispatchSetDevConsoleMinimized(false)
end
any_extend_result1.onMaximizeClicked = onMaximizeClicked
local function onCloseClicked(arg1) -- Line 38
	arg1.props.onCloseCallback(false)
	arg1.props.dispatchSetDevConsolVisibility(false)
end
any_extend_result1.onCloseClicked = onCloseClicked
local MinSize_upvr = Constants_upvr.MainWindowInit.MinSize
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[3]:
		[1]: MinSize_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	function arg1.setDevConsoleSize(arg1_2, arg2, arg3) -- Line 44
		--[[ Upvalues[1]:
			[1]: MinSize_upvr (copied, readonly)
		]]
		local var12 = arg3.X - arg2.X
		local var13 = arg3.Y - arg2.Y
		local var14
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var14 = MinSize_upvr.X
			return var14
		end
		if var12 >= MinSize_upvr.X or not INLINED() then
			var14 = var12
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var14 = MinSize_upvr.Y
			return var14
		end
		if var13 >= MinSize_upvr.Y or not INLINED_2() then
			var14 = var13
		end
		var14 = arg1_2.props.dispatchChangeDevConsoleSize
		var14(UDim2.new(0, var14, 0, var14))
	end
	function arg1.resizeInputBegan(arg1_3, arg2) -- Line 54
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
			local var16_upvw
			local var17_upvw
			var16_upvw = UserInputService_upvr.InputChanged:Connect(function(arg1_4) -- Line 58, Named "onInputChanged"
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setDevConsoleSize(arg1.ref.current.AbsolutePosition, arg1_4.Position)
			end)
			var17_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_5) -- Line 64, Named "onInputEnded"
				--[[ Upvalues[2]:
					[1]: var16_upvw (read and write)
					[2]: var17_upvw (read and write)
				]]
				if arg1_5.UserInputType == Enum.UserInputType.MouseButton1 then
					var16_upvw:Disconnect()
					var17_upvw:Disconnect()
				end
			end)
		end
	end
	function arg1.doGamepadMenuButton(arg1_6) -- Line 76
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isVisible then
			local var19 = true
			if arg1_6.KeyCode ~= Enum.KeyCode.ButtonStart then
				if arg1_6.KeyCode ~= Enum.KeyCode.Escape then
					var19 = false
				else
					var19 = true
				end
			end
			if var19 then
				arg1.props.dispatchSetDevConsolVisibility(false)
			end
		end
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.state = {
		resizing = false;
	}
end
function any_extend_result1.didMount(arg1) -- Line 92
	--[[ Upvalues[2]:
		[1]: setMouseVisibility_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	delay(0, function() -- Line 96
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ref.current then
			arg1:setDevConsoleSize(arg1.ref.current.AbsolutePosition, arg1.ref.current.ResizeButton.AbsolutePosition)
		end
	end)
	setMouseVisibility_upvr(arg1.props.isVisible)
	arg1.gamepadMenuListener = UserInputService_upvr.InputBegan:Connect(arg1.doGamepadMenuButton)
end
function any_extend_result1.willUnmount(arg1) -- Line 108
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if GuiService_upvr.SelectedCoreObject == arg1.ref.current then
		GuiService_upvr.SelectedCoreObject = nil
	end
	arg1.gamepadMenuListener:Disconnect()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 116
	--[[ Upvalues[3]:
		[1]: setMouseVisibility_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	setMouseVisibility_upvr(arg1.props.isVisible)
	if arg1.props.isMinimized and GuiService_upvr.SelectedCoreObject == arg1.ref.current then
		GuiService_upvr.SelectedCoreObject = nil
	else
		local var22
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var22 = arg2.currTabIndex
			var22 = arg1.props
			return var22.currTabIndex ~= var22
		end
		if arg1.props.isVisible ~= var22 or INLINED_3() then
			if Enum.UserInputType.Gamepad1 ~= UserInputService_upvr:GetLastInputType() then
				var22 = false
			else
				var22 = true
			end
			if var22 and arg1.props.isVisible then
				GuiService_upvr.SelectedCoreObject = arg1.ref.current
				return
			end
			GuiService_upvr.SelectedCoreObject = nil
		end
	end
end
local RobloxGui_upvr = game:GetService("CoreGui").RobloxGui
local WindowPadding_upvr = Constants_upvr.Padding.WindowPadding
local DevConsoleTopBar_upvr = require(Parent.Components.DevConsoleTopBar)
local FrameHeight_upvr = Constants_upvr.TopBarFormatting.FrameHeight
function any_extend_result1.render(arg1) -- Line 133
	--[[ Upvalues[6]:
		[1]: Constants_upvr (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: WindowPadding_upvr (readonly)
		[5]: DevConsoleTopBar_upvr (readonly)
		[6]: FrameHeight_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isVisible = arg1.props.isVisible
	local formFactor = arg1.props.formFactor
	local tabList = arg1.props.tabList
	local tbl = {}
	local var31
	if formFactor ~= Constants_upvr.FormFactor.Large then
		local AbsoluteSize = RobloxGui_upvr.AbsoluteSize
		var31 = UDim2.new(0, AbsoluteSize.X, 0, AbsoluteSize.Y) + UDim2.new(0, -32, 0, 0)
		local var33 = 0
	end
	tbl.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		Padding = UDim.new(0, WindowPadding_upvr);
	})
	if arg1.props.isMinimized then
		local tbl_2 = {
			LayoutOrder = 1;
			formFactor = formFactor;
			isMinimized = true;
		}
		local function onMinimizeClicked() -- Line 176
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMinimizeClicked()
		end
		tbl_2.onMinimizeClicked = onMinimizeClicked
		local function onMaximizeClicked() -- Line 179
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMaximizeClicked()
		end
		tbl_2.onMaximizeClicked = onMaximizeClicked
		local function onCloseClicked() -- Line 182
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onCloseClicked()
		end
		tbl_2.onCloseClicked = onCloseClicked
		tbl.TopBar = Roact_upvr.createElement(DevConsoleTopBar_upvr, tbl_2)
		return Roact_upvr.createElement("Frame", {
			Position = UDim2.new(1, -500, 1, -2 * FrameHeight_upvr);
			Size = UDim2.new(0, 500, 0, 2 * FrameHeight_upvr);
			BackgroundColor3 = Color3.new(0, 0, 0);
			Transparency = Constants_upvr.MainWindowInit.Transparency;
			Active = true;
			AutoLocalize = false;
			Visible = isVisible;
			Selectable = true;
			BorderColor3 = Constants_upvr.Color.BaseGray;
			[Roact_upvr.Ref] = arg1.ref;
		}, tbl)
	end
	tbl.TopBar = Roact_upvr.createElement(DevConsoleTopBar_upvr, {
		LayoutOrder = 1;
		formFactor = formFactor;
		isMinimized = false;
		onMinimizeClicked = function() -- Line 205, Named "onMinimizeClicked"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMinimizeClicked()
		end;
		onMaximizeClicked = function() -- Line 208, Named "onMaximizeClicked"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMaximizeClicked()
		end;
		onCloseClicked = function() -- Line 211, Named "onCloseClicked"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onCloseClicked()
		end;
	})
	if arg1.ref.current and isVisible and tabList and tabList[arg1.props.currTabIndex] then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.MainView = Roact_upvr.createElement(tabList[arg1.props.currTabIndex].tab, {
			size = var31 - UDim2.new(0, 0, 0, FrameHeight_upvr + 2 * WindowPadding_upvr);
			formFactor = formFactor;
			isDeveloperView = arg1.props.isDeveloperView;
			tabList = tabList;
		})
	end
	local module = {
		Position = UDim2.new(0, 0, 0, 0);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.Size = UDim2.new(0, AbsoluteSize.X, 0, AbsoluteSize.Y)
	module.Visible = isVisible
	module.BackgroundColor3 = Color3.new(0, 0, 0)
	module.Transparency = Constants_upvr.MainWindowInit.Transparency
	module.BorderColor3 = Constants_upvr.Color.BaseGray
	module.BorderSizePixel = var33
	module.Active = true
	module.AutoLocalize = false
	module.Selectable = false
	module[Roact_upvr.Ref] = arg1.ref
	return Roact_upvr.createElement("Frame", module, {
		DevConsoleUI = Roact_upvr.createElement("Frame", {
			Size = var31;
			Position = UDim2.new(0, 16, 0, 0);
			BackgroundTransparency = 1;
		}, tbl);
		ResizeButton = Roact_upvr.createElement("ImageButton", {
			Position = UDim2.new(1, 0, 1, 0);
			Size = UDim2.new(0, var33, 0, var33);
			BackgroundColor3 = Color3.new(0, 0, 0);
			Modal = true;
			[Roact_upvr.Event.InputBegan] = arg1.resizeInputBegan;
		});
	})
end
local ChangeDevConsoleSize_upvr = require(Actions.ChangeDevConsoleSize)
local SetDevConsoleVisibility_upvr = require(Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized_upvr = require(Actions.SetDevConsoleMinimized)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 266, Named "mapStateToProps"
	return {
		isVisible = arg1.DisplayOptions.isVisible;
		isMinimized = arg1.DisplayOptions.isMinimized;
		position = arg1.DisplayOptions.position;
		size = arg1.DisplayOptions.size;
		isDeveloperView = arg1.MainView.isDeveloperView;
		currTabIndex = arg1.MainView.currTabIndex;
		tabList = arg1.MainView.tabList;
	}
end, function(arg1) -- Line 278, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: ChangeDevConsoleSize_upvr (readonly)
		[2]: SetDevConsoleVisibility_upvr (readonly)
		[3]: SetDevConsoleMinimized_upvr (readonly)
	]]
	return {
		dispatchChangeDevConsoleSize = function(arg1_7) -- Line 280, Named "dispatchChangeDevConsoleSize"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ChangeDevConsoleSize_upvr (copied, readonly)
			]]
			arg1(ChangeDevConsoleSize_upvr(arg1_7))
		end;
		dispatchSetDevConsolVisibility = function(arg1_8) -- Line 283, Named "dispatchSetDevConsolVisibility"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDevConsoleVisibility_upvr (copied, readonly)
			]]
			arg1(SetDevConsoleVisibility_upvr(arg1_8))
		end;
		dispatchSetDevConsoleMinimized = function(arg1_9) -- Line 286, Named "dispatchSetDevConsoleMinimized"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDevConsoleMinimized_upvr (copied, readonly)
			]]
			arg1(SetDevConsoleMinimized_upvr(arg1_9))
		end;
	}
end)(any_extend_result1)