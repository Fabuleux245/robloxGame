-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:22
-- Luau version 6, Types version 3
-- Time taken: 0.011313 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Core = Parent_2.Core
local Roact_upvr = require(Parent.Roact)
local t_upvr = require(Parent.t)
local Otter_upvr = require(Parent.Otter)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local tbl_2_upvr = {
	frequency = 10;
	dampingRatio = 1;
}
local tbl_upvr = {
	[ControlState_upvr.Default] = "BackgroundUIDefault";
}
local tbl_upvr_4 = {
	[ControlState_upvr.Default] = "Divider";
}
local tbl_3_upvr = {
	[ControlState_upvr.Default] = "UIEmphasis";
}
local tbl_upvr_3 = {
	[ControlState_upvr.Default] = "SecondaryDefault";
	[ControlState_upvr.Hover] = "SecondaryOnHover";
}
local any_extend_result1 = Roact_upvr.Component:extend("SegmentedControl")
any_extend_result1.validateProps = t_upvr.strictInterface({
	tabs = function(arg1) -- Line 49
		--[[ Upvalues[1]:
			[1]: t_upvr (readonly)
		]]
		local var16, var17 = t_upvr.array(t_upvr.strictInterface({
			tabName = t_upvr.string;
			isDisabled = t_upvr.optional(t_upvr.boolean);
			icon = t_upvr.optional(t_upvr.table);
		}))(arg1)
		if not var16 then
			return var16, var17
		end
		local var18, var19 = t_upvr.numberMin(2)(#arg1)
		if not var18 then
			return var18, var19
		end
		local var20, var21 = t_upvr.numberMax(4)(#arg1)
		if not var20 then
			return var20, var21
		end
		return true
	end;
	width = t_upvr.UDim;
	height = t_upvr.optional(t_upvr.number);
	maxWidth = t_upvr.optional(t_upvr.number);
	selectedTabIndex = t_upvr.number;
	onTabActivated = t_upvr.callback;
	NextSelectionLeft = t_upvr.optional(t_upvr.table);
	NextSelectionRight = t_upvr.optional(t_upvr.table);
	NextSelectionUp = t_upvr.optional(t_upvr.table);
	NextSelectionDown = t_upvr.optional(t_upvr.table);
	layoutOrder = t_upvr.optional(t_upvr.number);
})
any_extend_result1.defaultProps = {
	height = 44;
}
function any_extend_result1.init(arg1) -- Line 112
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: Otter_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
	]]
	arg1.rootRef = Roact_upvr.createRef()
	arg1.tabRefs = RoactGamepad_upvr.createRefCache()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.selectedBackgroundPositionX = any_createBinding_result1
	arg1.setSelectedBackgroundPositionX = any_createBinding_result2
	arg1.selectedBackgroundMotor = Otter_upvr.createSingleMotor(4)
	arg1.selectedBackgroundMotor:onStep(function(arg1_2) -- Line 118
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.setSelectedBackgroundPositionX(arg1_2)
	end)
	arg1:setState({
		tabWidth = 0;
		computedMinFrameWidth = 0;
	})
	function arg1.onTabActivated(arg1_3) -- Line 127
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onTabActivated(arg1_3)
	end
	function arg1.setSize(arg1_4) -- Line 131
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_2_upvr (copied, readonly)
		]]
		local floored = math.floor((math.max(arg1_4.AbsoluteSize.X, arg1.state.computedMinFrameWidth) - 8) / #arg1.props.tabs)
		arg1.selectedBackgroundMotor:setGoal(Otter_upvr.spring(4 + floored * (arg1.props.selectedTabIndex - 1), tbl_2_upvr))
		arg1:setState({
			tabWidth = floored;
		})
	end
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local var35_upvr = require(Parent_2.App.ImageSet.getIconSize)(require(Parent_2.App.ImageSet.Enum.IconSize).Medium)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local Cryo_upvr = require(Parent.Cryo)
local SegmentedControlTabName_upvr = require(script.Parent.SegmentedControlTabName)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local component_assets_circle_17_upvr = require(Parent_2.App.ImageSet.Images)["component_assets/circle_17"]
function any_extend_result1.render(arg1) -- Line 144
	--[[ Upvalues[15]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: getContentStyle_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: tbl_upvr_4 (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: var35_upvr (readonly)
		[8]: GetTextSize_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: RoactGamepad_upvr (readonly)
		[11]: Cryo_upvr (readonly)
		[12]: SegmentedControlTabName_upvr (readonly)
		[13]: tbl_upvr_3 (readonly)
		[14]: ImageSetComponent_upvr (readonly)
		[15]: component_assets_circle_17_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 145
		--[[ Upvalues[15]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: getContentStyle_upvr (copied, readonly)
			[4]: tbl_upvr (copied, readonly)
			[5]: tbl_upvr_4 (copied, readonly)
			[6]: tbl_3_upvr (copied, readonly)
			[7]: var35_upvr (copied, readonly)
			[8]: GetTextSize_upvr (copied, readonly)
			[9]: Roact_upvr (copied, readonly)
			[10]: RoactGamepad_upvr (copied, readonly)
			[11]: Cryo_upvr (copied, readonly)
			[12]: SegmentedControlTabName_upvr (copied, readonly)
			[13]: tbl_upvr_3 (copied, readonly)
			[14]: ImageSetComponent_upvr (copied, readonly)
			[15]: component_assets_circle_17_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local controlState = arg1.state.controlState
		local len_upvr = #arg1.props.tabs
		local var52
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var52 = ControlState_upvr.Disabled
			return var52
		end
		if not arg1.props.tabs[arg1.props.selectedTabIndex].isDisabled or not INLINED() then
			var52 = controlState
		end
		local getContentStyle_upvr_result1 = getContentStyle_upvr(tbl_upvr_4, controlState, arg1_5)
		if arg1.props.icon then
			local _ = var35_upvr
		else
		end
		local var55_upvr = arg1.props.height - 16
		if arg1.state.computedMinFrameWidth == 0 then
			for i = 1, len_upvr do
				local var56
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local tbl_4 = {}
			if arg1.props.maxWidth then
				local _ = math.min(((0) + (math.max(0, GetTextSize_upvr(arg1.props.tabs[i].tabName, arg1_5.Font.Header2.RelativeSize * arg1_5.Font.BaseSize, Enum.Font.BuilderSans, Vector2.new(math.huge, math.huge)).X) + 8)) * len_upvr + 8, arg1.props.maxWidth)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			tbl_4.computedMinFrameWidth = math.max(((0) + (math.max(0, GetTextSize_upvr(arg1.props.tabs[i].tabName, arg1_5.Font.Header2.RelativeSize * arg1_5.Font.BaseSize, Enum.Font.BuilderSans, Vector2.new(math.huge, math.huge)).X) + 8)) * len_upvr + 8, (0 + 80) * len_upvr + 8)
			arg1:setState(tbl_4)
		end
		for i_2 = 1, len_upvr - 1 do
			if i_2 ~= arg1.props.selectedTabIndex and i_2 ~= arg1.props.selectedTabIndex - 1 then
				table.insert({}, i_2, Roact_upvr.createElement("Frame", {
					Size = UDim2.fromOffset(1, var55_upvr);
					BackgroundTransparency = getContentStyle_upvr_result1.Transparency;
					BackgroundColor3 = getContentStyle_upvr_result1.Color;
					Position = UDim2.fromOffset(4 + arg1.state.tabWidth * i_2, (arg1.props.height - var55_upvr) / 2);
				}))
			end
		end
		local tabWidth_upvr = arg1.state.tabWidth
		local height_upvr = arg1.props.height
		local var63_upvr = arg1.props.height - 12
		local getContentStyle_upvr_result1_3_upvr = getContentStyle_upvr(tbl_upvr, controlState, arg1_5)
		local tbl_upvr_2 = {}
		local getContentStyle_upvr_result1_2_upvr = getContentStyle_upvr(tbl_3_upvr, var52, arg1_5)
		return RoactGamepad_upvr.withFocusController(function(arg1_6) -- Line 204
			--[[ Upvalues[16]:
				[1]: arg1 (copied, readonly)
				[2]: len_upvr (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: RoactGamepad_upvr (copied, readonly)
				[6]: tabWidth_upvr (readonly)
				[7]: height_upvr (readonly)
				[8]: SegmentedControlTabName_upvr (copied, readonly)
				[9]: tbl_upvr_3 (copied, readonly)
				[10]: ImageSetComponent_upvr (copied, readonly)
				[11]: var63_upvr (readonly)
				[12]: component_assets_circle_17_upvr (copied, readonly)
				[13]: getContentStyle_upvr_result1_3_upvr (readonly)
				[14]: tbl_upvr_2 (readonly)
				[15]: var55_upvr (readonly)
				[16]: getContentStyle_upvr_result1_2_upvr (readonly)
			]]
			local function _(arg1_7) -- Line 205
				--[[ Upvalues[2]:
					[1]: arg1_6 (readonly)
					[2]: arg1 (copied, readonly)
				]]
				if 1 < arg1_7 then
					arg1_6.moveFocusTo(arg1.tabRefs[arg1_7 - 1])
				end
			end
			local function _(arg1_8) -- Line 210
				--[[ Upvalues[3]:
					[1]: len_upvr (copied, readonly)
					[2]: arg1_6 (readonly)
					[3]: arg1 (copied, readonly)
				]]
				if arg1_8 < len_upvr then
					arg1_6.moveFocusTo(arg1.tabRefs[arg1_8 + 1])
				end
			end
			local function var69_upvr() -- Line 215
				--[[ Upvalues[2]:
					[1]: arg1_6 (readonly)
					[2]: arg1 (copied, readonly)
				]]
				arg1_6.moveFocusTo(arg1.rootRef)
			end
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(arg1.props.width.Scale, arg1.props.width.Offset, 0, height_upvr);
				BackgroundTransparency = 1;
				[Roact_upvr.Change.AbsoluteSize] = arg1.setSize;
				LayoutOrder = arg1.props.layoutOrder;
			}, {
				SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
					MinSize = Vector2.new(arg1.state.computedMinFrameWidth, height_upvr);
					MaxSize = Vector2.new(640, height_upvr);
				});
				Background = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
					Size = UDim2.new(1, 0, 0, var63_upvr);
					Position = UDim2.fromOffset(0, (height_upvr - var63_upvr) / 2);
					BackgroundTransparency = 1;
					Image = component_assets_circle_17_upvr;
					ImageColor3 = getContentStyle_upvr_result1_3_upvr.Color;
					ImageTransparency = getContentStyle_upvr_result1_3_upvr.Transparency;
					LayoutOrder = 1;
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(8, 8, 9, 9);
					ZIndex = 1;
				});
				Dividers = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
					Size = UDim2.new(1, 0, 0, height_upvr);
					Position = UDim2.fromOffset(0, 0);
					BackgroundTransparency = 1;
					ZIndex = 2;
					NextSelectionLeft = arg1.props.NextSelectionLeft;
					NextSelectionRight = arg1.props.NextSelectionRight;
					NextSelectionUp = arg1.props.NextSelectionUp;
					NextSelectionDown = arg1.props.NextSelectionDown;
					[Roact_upvr.Ref] = arg1.rootRef;
					inputBindings = {
						Enter = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, function() -- Line 301
							--[[ Upvalues[2]:
								[1]: arg1_6 (readonly)
								[2]: arg1 (copied, readonly)
							]]
							arg1_6.moveFocusTo(arg1.tabRefs[arg1.props.selectedTabIndex])
						end);
					};
				}, tbl_upvr_2);
				SelectedBackground = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
					Size = UDim2.fromOffset(tabWidth_upvr, var55_upvr);
					Position = arg1.selectedBackgroundPositionX:map(function(arg1_10) -- Line 309
						--[[ Upvalues[2]:
							[1]: height_upvr (copied, readonly)
							[2]: var55_upvr (copied, readonly)
						]]
						return UDim2.fromOffset(arg1_10, (height_upvr - var55_upvr) / 2)
					end);
					BackgroundTransparency = 1;
					Image = component_assets_circle_17_upvr;
					ImageColor3 = getContentStyle_upvr_result1_2_upvr.Color;
					ImageTransparency = getContentStyle_upvr_result1_2_upvr.Transparency;
					LayoutOrder = 2;
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(8, 8, 9, 9);
					ZIndex = 4;
				});
				TabContainer = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					Position = UDim2.fromScale(0, 0);
					ZIndex = 5;
					defaultChild = arg1.tabRefs[arg1.props.selectedTabIndex];
				}, {
					TabLayout = Roact_upvr.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center;
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
					});
					
					Roact_upvr.createFragment(Cryo_upvr.List.map(arg1.props.tabs, function(arg1_9, arg2) -- Line 220
						--[[ Upvalues[10]:
							[1]: Roact_upvr (copied, readonly)
							[2]: RoactGamepad_upvr (copied, readonly)
							[3]: tabWidth_upvr (copied, readonly)
							[4]: height_upvr (copied, readonly)
							[5]: arg1 (copied, readonly)
							[6]: len_upvr (copied, readonly)
							[7]: var69_upvr (readonly)
							[8]: arg1_6 (readonly)
							[9]: SegmentedControlTabName_upvr (copied, readonly)
							[10]: tbl_upvr_3 (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local module = {
							key = arg1_9.tabName;
						}
						module.LayoutOrder = arg2
						module.Size = UDim2.fromOffset(tabWidth_upvr, height_upvr)
						module.BackgroundTransparency = 1
						module[Roact_upvr.Ref] = arg1.tabRefs[arg2]
						local var72
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							var72 = arg1.tabRefs[arg2 - 1]
							return var72
						end
						if 1 >= arg2 or not INLINED_2() then
							var72 = nil
						end
						module.NextSelectionLeft = var72
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var72 = arg1.tabRefs[arg2 + 1]
							return var72
						end
						if arg2 >= len_upvr or not INLINED_3() then
							var72 = nil
						end
						module.NextSelectionRight = var72
						var72 = {}
						var72.LeaveA = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, var69_upvr)
						var72.LeaveB = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonB, var69_upvr)
						var72.SelectNext1 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonR1, function() -- Line 232
							--[[ Upvalues[4]:
								[1]: arg2 (readonly)
								[2]: len_upvr (copied, readonly)
								[3]: arg1_6 (copied, readonly)
								[4]: arg1 (copied, readonly)
							]]
							local var74 = arg2
							if var74 < len_upvr then
								arg1_6.moveFocusTo(arg1.tabRefs[var74 + 1])
							end
						end)
						var72.SelectPre1 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonL1, function() -- Line 235
							--[[ Upvalues[3]:
								[1]: arg2 (readonly)
								[2]: arg1_6 (copied, readonly)
								[3]: arg1 (copied, readonly)
							]]
							local var76 = arg2
							if 1 < var76 then
								arg1_6.moveFocusTo(arg1.tabRefs[var76 - 1])
							end
						end)
						var72.SelectNext2 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonR2, function() -- Line 238
							--[[ Upvalues[4]:
								[1]: arg2 (readonly)
								[2]: len_upvr (copied, readonly)
								[3]: arg1_6 (copied, readonly)
								[4]: arg1 (copied, readonly)
							]]
							local var78 = arg2
							if var78 < len_upvr then
								arg1_6.moveFocusTo(arg1.tabRefs[var78 + 1])
							end
						end)
						var72.SelectPre2 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonL2, function() -- Line 241
							--[[ Upvalues[3]:
								[1]: arg2 (readonly)
								[2]: arg1_6 (copied, readonly)
								[3]: arg1 (copied, readonly)
							]]
							local var80 = arg2
							if 1 < var80 then
								arg1_6.moveFocusTo(arg1.tabRefs[var80 - 1])
							end
						end)
						var72.SelectNext3 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonR3, function() -- Line 244
							--[[ Upvalues[4]:
								[1]: arg2 (readonly)
								[2]: len_upvr (copied, readonly)
								[3]: arg1_6 (copied, readonly)
								[4]: arg1 (copied, readonly)
							]]
							local var82 = arg2
							if var82 < len_upvr then
								arg1_6.moveFocusTo(arg1.tabRefs[var82 + 1])
							end
						end)
						var72.SelectPre3 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonL3, function() -- Line 247
							--[[ Upvalues[3]:
								[1]: arg2 (readonly)
								[2]: arg1_6 (copied, readonly)
								[3]: arg1 (copied, readonly)
							]]
							local var84 = arg2
							if 1 < var84 then
								arg1_6.moveFocusTo(arg1.tabRefs[var84 - 1])
							end
						end)
						module.inputBindings = var72
						var72 = {}
						local tbl = {
							text = arg1_9.tabName;
							onActivated = function() -- Line 254, Named "onActivated"
								--[[ Upvalues[2]:
									[1]: arg1 (copied, readonly)
									[2]: arg2 (readonly)
								]]
								arg1.onTabActivated(arg2)
							end;
							Size = UDim2.fromScale(1, 1);
							isDisabled = arg1_9.isDisabled;
						}
						if arg1.props.selectedTabIndex ~= arg2 then
						else
						end
						tbl.isSelectedStyle = true
						tbl.icon = arg1_9.icon
						tbl.iconStateColorMap = tbl_upvr_3
						var72.Tab = Roact_upvr.createElement(SegmentedControlTabName_upvr, tbl)
						return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, module, var72)
					end))
				});
			})
		end)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 342
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if arg2.selectedTabIndex ~= arg1.props.selectedTabIndex then
		arg1.selectedBackgroundMotor:setGoal(Otter_upvr.spring(4 + arg1.state.tabWidth * (arg1.props.selectedTabIndex - 1), tbl_2_upvr))
	end
end
return any_extend_result1