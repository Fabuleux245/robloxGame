-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:44
-- Luau version 6, Types version 3
-- Time taken: 0.011547 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Otter_upvr = InGameMenuDependencies.Otter
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("NavigationButton")
function any_extend_result1_upvr.init(arg1, arg2) -- Line 45
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local var8
	if arg2.selected then
		var8 = 1
	else
		var8 = 0
	end
	local any_createBinding_result1, any_createBinding_result2_upvr = Roact_upvr.createBinding(var8)
	arg1.fillSize = any_createBinding_result1:map(function(arg1_2) -- Line 49
		return UDim2.new(arg1_2, 0, 1, 0)
	end)
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.hoverTransparency = any_createBinding_result1_2
	arg1.setHoverTransparency = any_createBinding_result2
	arg1.motor = Otter_upvr.createGroupMotor({
		fillProgress = var8;
		hoverTransparency = 0;
	})
	arg1.motor:onStep(function(arg1_3) -- Line 61
		--[[ Upvalues[2]:
			[1]: any_createBinding_result2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_createBinding_result2_upvr(arg1_3.fillProgress)
		arg1.setHoverTransparency(arg1_3.hoverTransparency)
	end)
	arg1:setState({
		hovering = false;
		pressing = false;
	})
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local divideTransparency_upvr = require(Parent.Utility.divideTransparency)
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 72
	--[[ Upvalues[7]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: divideTransparency_upvr (readonly)
		[7]: ThemedTextLabel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withLocalization_upvr({
		text = props_upvr.text;
	})(function(arg1_4) -- Line 77
		--[[ Upvalues[9]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: props_upvr (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: CursorKind_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: divideTransparency_upvr (copied, readonly)
			[9]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_5) -- Line 78
			--[[ Upvalues[9]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: CursorKind_upvr (copied, readonly)
				[6]: ImageSetLabel_upvr (copied, readonly)
				[7]: divideTransparency_upvr (copied, readonly)
				[8]: ThemedTextLabel_upvr (copied, readonly)
				[9]: arg1_4 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var37
			if arg1.state.pressing then
				local var28 = not props_upvr.selected
			end
			local tbl_2 = {
				Transparency = 1;
				Color = Color3.new(1, 1, 1);
			}
			if arg1.state.pressing then
				tbl_2 = arg1_5.Theme.BackgroundOnPress
			elseif arg1.state.hovering then
				tbl_2 = arg1_5.Theme.BackgroundOnHover
			end
			local module_2 = {
				AutoButtonColor = false;
				BackgroundTransparency = tbl_2.Transparency;
				BackgroundColor3 = tbl_2.Color;
				BorderSizePixel = 0;
			}
			var37 = props_upvr
			module_2.LayoutOrder = var37.LayoutOrder
			var37 = 1
			module_2.Size = UDim2.new(var37, 0, 0, 70)
			module_2.Text = ""
			var37 = CursorKind_upvr.Square
			module_2.SelectionImageObject = arg2(var37)
			var37 = Roact_upvr.Event
			var37 = props_upvr.onActivated
			module_2[var37.Activated] = var37
			var37 = Roact_upvr
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var37 = props_upvr.mainPageFirstButtonRef
				return var37
			end
			if props_upvr.LayoutOrder ~= 1 or not INLINED() then
				var37 = nil
			end
			module_2[var37.Ref] = var37
			var37 = Roact_upvr.Event
			function var37() -- Line 102
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					hovering = true;
				})
			end
			module_2[var37.MouseEnter] = var37
			var37 = Roact_upvr.Event
			function var37() -- Line 107
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					hovering = false;
					pressing = false;
				})
			end
			module_2[var37.MouseLeave] = var37
			var37 = Roact_upvr.Event
			function var37(arg1_6, arg2_2) -- Line 113
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2_2.UserInputType == Enum.UserInputType.MouseButton1 or arg2_2.UserInputType == Enum.UserInputType.Touch then
					arg1:setState({
						pressing = true;
					})
				end
			end
			module_2[var37.InputBegan] = var37
			var37 = Roact_upvr.Event
			function var37(arg1_7, arg2_3) -- Line 123
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2_3.UserInputType == Enum.UserInputType.MouseButton1 or arg2_3.UserInputType == Enum.UserInputType.Touch then
					arg1:setState({
						pressing = false;
					})
				end
			end
			module_2[var37.InputEnded] = var37
			local module_3 = {}
			var37 = Roact_upvr.createElement
			local tbl_5 = {}
			local tbl_3 = {
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundTransparency = 1;
				Image = props_upvr.image;
				ImageColor3 = arg1_5.Theme.IconEmphasis.Color;
			}
			if var28 then
			else
			end
			tbl_3.ImageTransparency = divideTransparency_upvr(arg1_5.Theme.IconEmphasis.Transparency, 1)
			tbl_3.Position = UDim2.new(0, 28, 0.5, 0)
			tbl_3.Size = UDim2.new(0, 36, 0, 36)
			tbl_3.ZIndex = 3
			tbl_5.Icon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_3)
			local tbl_4 = {
				fontKey = "Header1";
				themeKey = "TextEmphasis";
				AnchorPoint = Vector2.new(0, 0.5);
				Position = UDim2.new(0, 80, 0.5, 0);
				Size = UDim2.new(1, -104, 1, 0);
				Text = arg1_4.text;
			}
			if var28 then
			else
			end
			tbl_4.TextTransparency = divideTransparency_upvr(arg1_5.Theme.TextEmphasis.Transparency, 1)
			tbl_4.TextXAlignment = Enum.TextXAlignment.Left
			tbl_4.ZIndex = 3
			tbl_5.Text = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_4)
			var37 = var37("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				ZIndex = 3;
				BackgroundTransparency = 1;
			}, tbl_5)
			module_3.ContentContainer = var37
			var37 = Roact_upvr.createElement
			var37 = var37("Frame", {
				BorderSizePixel = 0;
				Size = arg1.fillSize;
				BackgroundColor3 = arg1_5.Theme.BackgroundMuted.Color;
				ZIndex = 2;
			})
			module_3.SelectedFill = var37
			return Roact_upvr.createElement("TextButton", module_2, module_3)
		end)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 181
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_8) -- Line 182
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_8)
	end)
end
function any_extend_result1_upvr.didUpdate(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	local tbl_6 = {}
	local var48 = Otter_upvr
	if arg1.props.selected then
		var48 = 1
	else
		var48 = 0
	end
	tbl_6.fillProgress = var48.spring(var48, {
		frequency = 2.5;
	})
	var48 = Otter_upvr
	if arg1.state.hovering then
		var48 = 1
	else
		var48 = 0
	end
	tbl_6.hoverTransparency = var48.spring(var48, {
		frequency = 5;
	})
	arg1.motor:setGoal(tbl_6)
end
local Pages_upvr = require(script.Parent.Pages)
local Divider_upvr = require(script.Parent.Divider)
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 243
	return {
		currentPage = arg1.menuPage;
	}
end, function(arg1) -- Line 247
	--[[ Upvalues[3]:
		[1]: SetCurrentPage_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return {
		setCurrentPage = function(arg1_9) -- Line 249, Named "setCurrentPage"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(arg1_9))
			SendAnalytics_upvr("open_"..arg1_9.."_tab", Constants_upvr.AnalyticsMenuActionName, {})
		end;
	}
end)(function(arg1) -- Line 198, Named "PageNavigation"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Pages_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: any_extend_result1_upvr (readonly)
		[5]: Divider_upvr (readonly)
	]]
	local module = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		});
	}
	local len = #Pages_upvr.pagesByIndex
	local var60 = 1
	for i, v_upvr in ipairs(Pages_upvr.pagesByIndex) do
		local var64
		if v_upvr.parentPage == Constants_upvr.MainPagePageKey then
			local tbl = {}
			var64 = v_upvr.icon
			tbl.image = var64
			tbl.LayoutOrder = var60
			if arg1.currentPage ~= v_upvr.key then
				var64 = false
			else
				var64 = true
			end
			tbl.selected = var64
			tbl.text = v_upvr.title
			function tbl.onActivated() -- Line 216
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: v_upvr (readonly)
				]]
				arg1.setCurrentPage(v_upvr.key)
			end
			if var60 ~= 1 or not arg1.mainPageFirstButtonRef then
			end
			tbl.mainPageFirstButtonRef = nil
			module["Page"..v_upvr.key] = Roact_upvr.createElement(any_extend_result1_upvr, tbl)
			local var66 = var60 + 1
			if i < len then
				module["Divider"..var66] = Roact_upvr.createElement(Divider_upvr, {
					LayoutOrder = var66;
					Size = UDim2.new(1, -24, 0, 1);
				})
			end
		end
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Position = arg1.Position;
		Size = UDim2.new(1, -Constants_upvr.Zone.ContentOffset, 0, (len * 70) + (len - 1));
	}, module)
end)