-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:17
-- Luau version 6, Types version 3
-- Time taken: 0.011576 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Assets_upvr = require(Parent.Resources.Assets)
local divideTransparency_upvr = require(Parent.Utility.divideTransparency)
local ThemedButton_upvr = require(script.Parent.ThemedButton)
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local any_extend_result1 = Roact_upvr.PureComponent:extend("DropDownSelection")
any_extend_result1.validateProps = t.intersection(t.strictInterface({
	Size = t.UDim2;
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.integer);
	placeHolderText = t.optional(t.string);
	selectedIndex = t.numberMin(0);
	selections = t.array(t.string);
	localize = t.boolean;
	enabled = t.boolean;
	truncate = t.optional(t.boolean);
	selectionChanged = t.callback;
	canOpen = t.optional(t.boolean);
	canCaptureFocus = t.optional(t.boolean);
	selectionParentName = t.optional(t.string);
	ButtonRef = t.optional(t.table);
}), function(arg1) -- Line 54
	if #arg1.selections < arg1.selectedIndex then
		return false, "selectedIndex must not be greater than the number of selections"
	end
	return true
end)
any_extend_result1.defaultProps = {
	canOpen = true;
}
function any_extend_result1.init(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.rootRef = Roact_upvr.createRef()
	arg1.firstOptionRef = Roact_upvr.createRef()
	local ButtonRef_2 = arg1.props.ButtonRef
	if not ButtonRef_2 then
		ButtonRef_2 = Roact_upvr.createRef()
	end
	arg1.openDropDownButtonRef = ButtonRef_2
	arg1.state = {
		isOpen = false;
		dropDownItemHeight = 10;
		absolutePositionX = 0;
		absolutePositionY = 0;
		screenSizeX = 0;
		screenSizeY = 0;
	}
	arg1.ancestryConnection = nil
	arg1.sizeConnection = nil
end
function any_extend_result1.getDerivedStateFromProps(arg1) -- Line 86
	if not arg1.canOpen then
		return {
			isOpen = false;
		}
	end
	return nil
end
local Divider_upvr = require(script.Parent.Divider)
function any_extend_result1.renderDropDownList(arg1, arg2, arg3) -- Line 95
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: ThemedButton_upvr (readonly)
		[3]: Assets_upvr (readonly)
		[4]: divideTransparency_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
		[7]: Divider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	for i_upvr, _ in ipairs(arg1.props.selections) do
		local var32_upvw
		if arg1.props.localize then
			var32_upvw = arg3[i_upvr]
		end
		local renderChildren
		if arg1.props.truncate and i_upvr == 1 then
		end
		local tbl = {}
		renderChildren = UDim2.new(1, 0, 0, arg1.state.dropDownItemHeight - 1)
		tbl.Size = renderChildren
		renderChildren = i_upvr * 2
		tbl.LayoutOrder = renderChildren
		function renderChildren() -- Line 119, Named "onActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: i_upvr (readonly)
			]]
			arg1:setState({
				isOpen = false;
			})
			arg1.props.selectionChanged(i_upvr)
		end
		tbl.onActivated = renderChildren
		renderChildren = "BackgroundUIDefault"
		tbl.normalThemeKey = renderChildren
		renderChildren = "BackgroundOnHover"
		tbl.hoverThemeKey = renderChildren
		local function INLINED() -- Internal function, doesn't exist in bytecode
			renderChildren = arg1.firstOptionRef
			return renderChildren
		end
		if i_upvr ~= 1 or not INLINED() then
			renderChildren = nil
		end
		tbl.ButtonRef = renderChildren
		renderChildren = Assets_upvr.Images.WhiteSquare
		tbl.imageProps = renderChildren
		local var36_upvw = -48
		function renderChildren(arg1_2, arg2_2, arg3_2) -- Line 130
			--[[ Upvalues[10]:
				[1]: arg2 (readonly)
				[2]: divideTransparency_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: ImageSetLabel_upvr (copied, readonly)
				[5]: Assets_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: i_upvr (readonly)
				[8]: ThemedTextLabel_upvr (copied, readonly)
				[9]: var36_upvw (read and write)
				[10]: var32_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			if not arg2_2 or not arg2.Theme.IconOnHover then
				local IconDefault_2 = arg2.Theme.IconDefault
			end
			if arg3_2 then
			else
			end
			local module_2 = {}
			local tbl_6 = {
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(1, 0.5);
				Size = UDim2.new(0, 15, 0, 12);
				Position = UDim2.new(1, -25, 0.5, 0);
				Image = Assets_upvr.Images.SelectedCheck;
				ImageColor3 = IconDefault_2.Color;
				ImageTransparency = divideTransparency_upvr(IconDefault_2.Transparency, 1);
			}
			if arg1.props.selectedIndex ~= i_upvr then
				-- KONSTANTWARNING: GOTO [77] #56
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [76] 55. Error Block 28 start (CF ANALYSIS FAILED)
			tbl_6.Visible = true
			module_2.SelectedIcon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_6)
			local tbl_3 = {
				fontKey = "Header2";
				themeKey = "TextEmphasis";
				Position = UDim2.new(0, 25, 0, 0);
				Size = UDim2.new(1, var36_upvw, 1, 0);
				Text = var32_upvw;
			}
			if arg1.props.truncate then
			else
			end
			tbl_3.TextTruncate = Enum.TextTruncate.None
			tbl_3.TextXAlignment = Enum.TextXAlignment.Left
			module_2.TextLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_3)
			do
				return module_2
			end
			-- KONSTANTERROR: [76] 55. Error Block 28 end (CF ANALYSIS FAILED)
		end
		tbl.renderChildren = renderChildren
		module_3["button"..i_upvr] = Roact_upvr.createElement(ThemedButton_upvr, tbl)
		if i_upvr < #arg1.props.selections then
			local tbl_5 = {}
			renderChildren = i_upvr * 2 + 1
			tbl_5.LayoutOrder = renderChildren
			module_3["divider"..i_upvr] = Roact_upvr.createElement(Divider_upvr, tbl_5)
		end
	end
	return module_3
end
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.renderFocusHandler(arg1) -- Line 170
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandler_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 9 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	local canOpen = arg1.props.canOpen
	if canOpen then
		canOpen = arg1.state.isOpen
	end
	tbl_2.isFocused = canOpen
	function tbl_2.didFocus() -- Line 175
		--[[ Upvalues[3]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		ContextActionService_upvr:BindCoreAction("settings_dropdown_close_action", function(arg1_3, arg2) -- Line 176
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				arg1:setState({
					isOpen = false;
				})
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end, false, Enum.KeyCode.ButtonB)
		if arg1.props.canCaptureFocus then
			GuiService_upvr:RemoveSelectionGroup(arg1.props.selectionParentName)
			GuiService_upvr:AddSelectionParent(arg1.props.selectionParentName, arg1.rootRef.current)
			GuiService_upvr.SelectedCoreObject = arg1.firstOptionRef.current
		end
	end
	function tbl_2.didBlur() -- Line 191
		--[[ Upvalues[3]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		ContextActionService_upvr:UnbindCoreAction("settings_dropdown_close_action")
		GuiService_upvr:RemoveSelectionGroup(arg1.props.selectionParentName)
		if arg1.props.canOpen and not arg1.state.isOpen and arg1.props.canCaptureFocus then
			GuiService_upvr.SelectedCoreObject = arg1.openDropDownButtonRef.current
		end
	end
	local any_createElement_result1 = Roact_upvr.createElement(FocusHandler_upvr, tbl_2)
	if not any_createElement_result1 then
		-- KONSTANTERROR: [35] 26. Error Block 5 start (CF ANALYSIS FAILED)
		any_createElement_result1 = nil
		-- KONSTANTERROR: [35] 26. Error Block 5 end (CF ANALYSIS FAILED)
	end
	do
		return any_createElement_result1
	end
	-- KONSTANTERROR: [5] 4. Error Block 9 end (CF ANALYSIS FAILED)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local BarOnTopScrollingFrame_upvr = require(script.Parent.BarOnTopScrollingFrame)
function any_extend_result1.render(arg1) -- Line 203
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Assets_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ThemedButton_upvr (readonly)
		[6]: divideTransparency_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: ThemedTextLabel_upvr (readonly)
		[9]: BarOnTopScrollingFrame_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 204
		--[[ Upvalues[9]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Assets_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ThemedButton_upvr (copied, readonly)
			[6]: divideTransparency_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
			[9]: BarOnTopScrollingFrame_upvr (copied, readonly)
		]]
		local var55
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var55 = arg1.props.selections
			return var55
		end
		if not arg1.props.localize or not INLINED_2() then
			var55 = {}
		end
		function var55(arg1_5) -- Line 205
			--[[ Upvalues[9]:
				[1]: arg1 (copied, readonly)
				[2]: Assets_upvr (copied, readonly)
				[3]: arg1_4 (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ThemedButton_upvr (copied, readonly)
				[6]: divideTransparency_upvr (copied, readonly)
				[7]: ImageSetLabel_upvr (copied, readonly)
				[8]: ThemedTextLabel_upvr (copied, readonly)
				[9]: BarOnTopScrollingFrame_upvr (copied, readonly)
			]]
			local placeHolderText_upvw = arg1.props.placeHolderText
			if 0 < arg1.props.selectedIndex then
				if arg1.props.localize then
					placeHolderText_upvw = arg1_5[arg1.props.selectedIndex]
				else
					placeHolderText_upvw = arg1.props.selections[arg1.props.selectedIndex]
				end
			end
			local Size = Assets_upvr.Images.Shadow.Size
			return Roact_upvr.createElement("Frame", {
				Size = arg1.props.Size;
				Position = arg1.props.Position;
				LayoutOrder = arg1.props.LayoutOrder;
				BackgroundTransparency = 1;
				[Roact_upvr.Ref] = arg1.rootRef;
				[Roact_upvr.Change.AbsoluteSize] = function(arg1_6) -- Line 227
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						dropDownItemHeight = arg1_6.AbsoluteSize.Y;
					})
				end;
				[Roact_upvr.Change.AbsolutePosition] = function(arg1_7) -- Line 233
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						absolutePositionX = arg1_7.AbsolutePosition.X;
						absolutePositionY = arg1_7.AbsolutePosition.Y;
					})
				end;
			}, {
				OpenDropDownButton = Roact_upvr.createElement(ThemedButton_upvr, {
					Size = UDim2.new(1, 0, 1, 0);
					Visible = not arg1.state.isOpen;
					enabled = arg1.props.enabled;
					onActivated = function() -- Line 244, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						arg1:setState({
							isOpen = true;
						})
					end;
					normalThemeKey = "SecondaryDefault";
					hoverThemeKey = "SecondaryOnHover";
					imageProps = Assets_upvr.Images.RoundedRectBorder;
					renderChildren = function(arg1_8, arg2, arg3) -- Line 252, Named "renderChildren"
						--[[ Upvalues[8]:
							[1]: arg1_4 (copied, readonly)
							[2]: divideTransparency_upvr (copied, readonly)
							[3]: Roact_upvr (copied, readonly)
							[4]: ImageSetLabel_upvr (copied, readonly)
							[5]: Assets_upvr (copied, readonly)
							[6]: ThemedTextLabel_upvr (copied, readonly)
							[7]: placeHolderText_upvw (read and write)
							[8]: arg1 (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
						if not arg2 or not arg1_4.Theme.IconOnHover then
							local IconDefault = arg1_4.Theme.IconDefault
						end
						if arg3 then
						else
						end
						local module = {
							ButtonIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
								BackgroundTransparency = 1;
								Size = UDim2.new(0, 36, 0, 36);
								Position = UDim2.new(1, -16, 0.5, 0);
								AnchorPoint = Vector2.new(1, 0.5);
								Image = Assets_upvr.Images.ExpandArrow;
								ImageColor3 = IconDefault.Color;
								ImageTransparency = divideTransparency_upvr(IconDefault.Transparency, 1);
							});
						}
						local tbl_4 = {
							Text = placeHolderText_upvw;
							themeKey = "SecondaryContent";
							fontKey = "Header2";
							Position = UDim2.new(0, 12, 0, 0);
						}
						if arg1.props.truncate then
							-- KONSTANTWARNING: GOTO [105] #77
						end
						-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [104] 76. Error Block 28 start (CF ANALYSIS FAILED)
						tbl_4.Size = UDim2.new(1, -12, 1, 0)
						tbl_4.TextTransparency = arg1_8
						if arg1.props.truncate then
						else
						end
						tbl_4.TextTruncate = Enum.TextTruncate.None
						tbl_4.TextXAlignment = Enum.TextXAlignment.Left
						module.ButtonText = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_4)
						do
							return module
						end
						-- KONSTANTERROR: [104] 76. Error Block 28 end (CF ANALYSIS FAILED)
					end;
					ButtonRef = arg1.openDropDownButtonRef;
				});
				CloseDropDownArea = Roact_upvr.createElement("TextButton", {
					BackgroundTransparency = 1;
					Text = "";
					Position = UDim2.new(0, -arg1.state.absolutePositionX, 0, -arg1.state.absolutePositionY);
					Size = UDim2.new(0, arg1.state.screenSizeX, 0, arg1.state.screenSizeY);
					Visible = arg1.state.isOpen;
					Selectable = false;
					[Roact_upvr.Event.Activated] = function() -- Line 291
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						arg1:setState({
							isOpen = false;
						})
					end;
					ZIndex = 2;
				});
				DropDownShadow = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.Shadow.Image;
					Position = UDim2.new(0, -Size, 0, -Size);
					Size = UDim2.new(1, Size * 2, 0, Size * 2 + 8 + math.min(#arg1.props.selections, 7.5) * 44);
					ScaleType = Assets_upvr.Images.Shadow.ScaleType;
					SliceCenter = Assets_upvr.Images.Shadow.SliceCenter;
					Visible = arg1.state.isOpen;
					ZIndex = 3;
				}, {
					FocusHandler = arg1:renderFocusHandler();
					DropDownBackground = Roact_upvr.createElement(ImageSetLabel_upvr, {
						BackgroundTransparency = 1;
						Image = Assets_upvr.Images.RoundedRect.Image;
						ImageColor3 = arg1_4.Theme.BackgroundUIDefault.Color;
						ImageTransparency = arg1_4.Theme.BackgroundUIDefault.Transparency;
						ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
						Size = UDim2.new(1, -(Size * 2), 1, -(Size * 2));
						Position = UDim2.new(0.5, 0, 0.5, 0);
						AnchorPoint = Vector2.new(0.5, 0.5);
						SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
						SliceScale = 0.5;
					}, {
						DropDownList = Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
							Position = UDim2.new(0, 0, 0, 4);
							Size = UDim2.new(1, 0, 1, -8);
							CanvasSize = UDim2.new(1, 0, 0, #arg1.props.selections * arg1.state.dropDownItemHeight);
						}, arg1:renderDropDownList(arg1_4, arg1_5));
					});
				});
			})
		end
		return withLocalization_upvr(var55)(var55)
	end)
end
function any_extend_result1.watchLayerCollector(arg1, arg2) -- Line 334
	arg1:setState({
		screenSizeX = arg2.AbsoluteSize.X;
		screenSizeY = arg2.AbsoluteSize.Y;
	})
	arg1.sizeConnection = arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 340
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:setState({
			screenSizeX = arg2.AbsoluteSize.X;
			screenSizeY = arg2.AbsoluteSize.Y;
		})
	end)
end
function any_extend_result1.didMount(arg1) -- Line 348
	local current_upvr = arg1.rootRef.current
	local class_LayerCollector_upvw = current_upvr:FindFirstAncestorWhichIsA("LayerCollector")
	if class_LayerCollector_upvw == nil then
		arg1.ancestryConnection = current_upvr.AncestryChanged:Connect(function() -- Line 353
			--[[ Upvalues[3]:
				[1]: class_LayerCollector_upvw (read and write)
				[2]: current_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			class_LayerCollector_upvw = current_upvr:FindFirstAncestorWhichIsA("LayerCollector")
			if class_LayerCollector_upvw ~= nil then
				arg1.ancestryConnection:Disconnect()
				arg1.ancestryConnection = nil
				arg1:watchLayerCollector(class_LayerCollector_upvw)
			end
		end)
	else
		arg1:watchLayerCollector(class_LayerCollector_upvw)
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 366
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg2.ButtonRef ~= arg1.props.ButtonRef then
		local ButtonRef = arg1.props.ButtonRef
		if not ButtonRef then
			ButtonRef = Roact_upvr.createRef()
		end
		arg1.openDropDownButtonRef = ButtonRef
	end
	if arg1.state.isOpen and arg2.canCaptureFocus ~= arg1.props.canCaptureFocus then
		arg1:setState({
			isOpen = false;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 377
	if arg1.ancestryConnection then
		arg1.ancestryConnection:Disconnect()
	end
	if arg1.sizeConnection then
		arg1.sizeConnection:Disconnect()
	end
end
return any_extend_result1