-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:58
-- Luau version 6, Types version 3
-- Time taken: 0.015777 seconds

local Parent_4 = script.Parent
local Parent = Parent_4.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local Cryo_upvr = require(Parent_2.Cryo)
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local t = require(Parent_2.t)
local Button_upvr = require(Parent_4.Button)
local ComboButton_upvr = require(Parent_4.ComboButton)
local IconButton_upvr = require(Parent_4.IconButton)
local TextButton_upvr = require(Parent_4.TextButton)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ActionBar")
function any_extend_result1_upvr.init(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: RoactGamepad_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.buttonRefs = RoactGamepad_upvr.createRefCache()
	local tbl_11 = {
		frameWidth = 0;
	}
	arg1.state = tbl_11
	tbl_11 = arg1.props.frameRef
	local var15 = tbl_11
	if not var15 then
		var15 = Roact_upvr.createRef()
	end
	arg1.frameRef = var15
	function arg1.updateFrameSize(arg1_2) -- Line 39
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X = arg1_2.AbsoluteSize.X
		if X ~= arg1.state.frameWidth then
			arg1:setState({
				frameWidth = X;
			})
		end
		if arg1.props.onAbsoluteSizeChanged then
			arg1.props.onAbsoluteSizeChanged(arg1_2.AbsoluteSize)
		end
	end
	function arg1.getGamepadNextSelectionLeft(arg1_3, arg2) -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = arg1.buttonRefs[arg1_3 - 1]
			return var20
		end
		if 1 >= arg1_3 or not INLINED() then
			var20 = nil
		end
		return var20
	end
	function arg1.getGamepadNextSelectionRight(arg1_4, arg2) -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4 >= arg2 or not arg1.buttonRefs[arg1_4 + 1] then
		end
		return nil
	end
end
any_extend_result1_upvr.validateProps = t.strictInterface({
	button = t.optional(t.union(t.strictInterface({
		props = Button_upvr.validateProps;
	}), t.strictInterface({
		props = ComboButton_upvr.validateProps;
	})));
	iconSize = t.optional(t.number);
	buttonHeight = t.optional(t.number);
	buttonPadding = t.optional(t.number);
	enableButtonAtStart = t.optional(t.boolean);
	icons = t.optional(t.array(t.strictInterface({
		props = IconButton_upvr.validateProps;
	})));
	marginOverride = t.optional(t.strictInterface({
		left = t.number;
		right = t.number;
		top = t.number;
		bottom = t.number;
	}));
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment));
	onAbsoluteSizeChanged = t.optional(t.callback);
	[Roact_upvr.Children] = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	frameRef = t.optional(t.table);
	textButtons = t.optional(t.array(t.strictInterface({
		props = TextButton_upvr.validateProps;
	})));
})
any_extend_result1_upvr.defaultProps = {
	horizontalAlignment = Enum.HorizontalAlignment.Center;
	iconSize = 36;
	buttonHeight = 48;
	buttonPadding = 12;
}
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local getPageMargin_upvr = require(Parent.Container.getPageMargin)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local Constants_upvr = require(Parent.Style.Constants)
local ButtonType_upvr = require(Parent_4.Enum.ButtonType)
local FitFrameOnAxis_upvr = require(Parent_2.FitFrame).FitFrameOnAxis
function any_extend_result1_upvr.render(arg1) -- Line 123
	--[[ Upvalues[13]:
		[1]: withStyle_upvr (readonly)
		[2]: getPageMargin_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: RoactGamepad_upvr (readonly)
		[8]: IconButton_upvr (readonly)
		[9]: TextButton_upvr (readonly)
		[10]: ComboButton_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: Button_upvr (readonly)
		[13]: FitFrameOnAxis_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 124
		--[[ Upvalues[13]:
			[1]: getPageMargin_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: RoactGamepad_upvr (copied, readonly)
			[8]: IconButton_upvr (copied, readonly)
			[9]: TextButton_upvr (copied, readonly)
			[10]: ComboButton_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
			[12]: Button_upvr (copied, readonly)
			[13]: FitFrameOnAxis_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var30_result1 = getPageMargin_upvr(arg1.state.frameWidth)
		local var100
		local var101
		if arg1.props.marginOverride then
			var100 = arg1.props.marginOverride
		else
			local tbl_12 = {
				left = var30_result1;
				right = var30_result1;
				top = 0;
			}
			var101 = Constants_upvr.Layout.ActionBar
			tbl_12.bottom = var101.PositionOffset
			var100 = tbl_12
		end
		tbl_12 = 0
		local var103 = tbl_12
		var101 = arg1.props
		if var101.icons then
			var101 = arg1.props.icons
			if #var101 then
				var101 = arg1.props
				var103 = #var101.icons
			end
		end
		local var104 = 0
		var101 = arg1.props.textButtons
		if var101 then
			var101 = #arg1.props.textButtons
			if var101 then
				var101 = arg1.props.textButtons
				var104 = #var101
			end
		end
		if arg1.props.button ~= nil then
			var101 = 1
		else
			var101 = 0
		end
		if arg1.props.enableButtonAtStart == true then
			if var101 == 0 then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
		end
		local var106 = var104 + var103 + var101
		if var103 ~= 0 then
			local var110
			for i, v in ipairs(arg1.props.icons) do
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var110 = i + var101
					return var110
				end
				if not true or not INLINED_3() then
					var110 = i
				end
				local any_join_result1_5 = Cryo_upvr.Dictionary.join({
					layoutOrder = var110;
					iconSize = IconSize_upvr.Medium;
				}, v.props)
				local tbl_13 = {
					key = "Button"..tostring(var110);
					Size = UDim2.fromOffset(arg1.props.iconSize, arg1.props.iconSize);
					BackgroundTransparency = 1;
					[Roact_upvr.Ref] = arg1.buttonRefs[var110];
					NextSelectionUp = nil;
					NextSelectionDown = nil;
					NextSelectionLeft = arg1.getGamepadNextSelectionLeft(var110, var106);
					NextSelectionRight = arg1.getGamepadNextSelectionRight(var110, var106);
				}
				local tbl_3 = {}
				if not any_join_result1_5.onActivated or not RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, any_join_result1_5.onActivated) then
				end
				tbl_3.Activated = nil
				tbl_13.inputBindings = tbl_3
				table.insert({}, Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, tbl_13, {
					Icon = Roact_upvr.createElement(IconButton_upvr, any_join_result1_5);
				}))
			end
		end
		if var104 ~= 0 then
			local ipairs_result1_4, ipairs_result2_4, ipairs_result3_2 = ipairs(arg1.props.textButtons)
			local var119
			for i_2, v_2 in ipairs_result1_4, ipairs_result2_4, ipairs_result3_2 do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if true then
					var119 = i_2 + var101
				else
					var119 = i_2
				end
				var110 = var119 + var103
				var119 = {}
				var119.layoutOrder = var110
				local any_join_result1_4 = Cryo_upvr.Dictionary.join(var119, v_2.props)
				local tbl_17 = {
					key = "Button"..tostring(var110);
					Size = UDim2.fromOffset(0, arg1.props.iconSize);
					AutomaticSize = Enum.AutomaticSize.X;
					BackgroundTransparency = 1;
					[Roact_upvr.Ref] = arg1.buttonRefs[var110];
					NextSelectionUp = nil;
					NextSelectionDown = nil;
					NextSelectionLeft = arg1.getGamepadNextSelectionLeft(var110, var106);
					NextSelectionRight = arg1.getGamepadNextSelectionRight(var110, var106);
				}
				local tbl_10 = {}
				if not any_join_result1_4.onActivated or not RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, any_join_result1_4.onActivated) then
				end
				tbl_10.Activated = nil
				tbl_17.inputBindings = tbl_10
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, tbl_17, {
					TextButton = Roact_upvr.createElement(TextButton_upvr, any_join_result1_4);
				}))
				local var124
			end
		end
		if var101 ~= 0 then
			var124 = arg1
			ipairs_result2_4 = arg1.state.frameWidth - var30_result1 * 2 - var103 * (arg1.props.iconSize + var124.props.buttonPadding)
			local var125 = ipairs_result2_4
			local udim2 = UDim2.fromOffset(var125, arg1.props.buttonHeight)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				var125 = 1
			else
				var125 = var103 + 1
			end
			local any_validateProps_result1 = ComboButton_upvr.validateProps(arg1.props.button.props)
			var124 = arg1.props.button
			local any_join_result1_2 = Cryo_upvr.Dictionary.join({
				layoutOrder = var125;
				size = udim2;
			}, var124.props)
			local tbl_14 = {}
			var124 = "Button"
			tbl_14.key = var124..var125
			tbl_14.Size = udim2
			tbl_14.BackgroundTransparency = 1
			var124 = Roact_upvr
			var124 = arg1.buttonRefs[var125]
			tbl_14[var124.Ref] = var124
			tbl_14.NextSelectionUp = nil
			tbl_14.NextSelectionDown = nil
			var124 = arg1
			var124 = var125
			tbl_14.NextSelectionLeft = var124.getGamepadNextSelectionLeft(var124, var106)
			var124 = arg1
			var124 = var125
			tbl_14.NextSelectionRight = var124.getGamepadNextSelectionRight(var124, var106)
			local tbl_9 = {}
			if not any_validateProps_result1 then
				var124 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, any_join_result1_2.onActivated)
			else
				var124 = nil
			end
			tbl_9.Activated = var124
			tbl_14.inputBindings = tbl_9
			if not any_validateProps_result1 then
				tbl_9 = any_join_result1_2.buttonType
				local var132 = tbl_9
				if var132 == nil then
					if var103 == 0 then
						var124 = ButtonType_upvr
						var132 = var124.PrimarySystem
					else
						var124 = ButtonType_upvr
						var132 = var124.PrimaryContextual
					end
					any_join_result1_2.buttonType = var132
				end
			end
			var124 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
			else
			end
			local tbl_7 = {}
			if any_validateProps_result1 then
			else
			end
			tbl_7.Icon = Roact_upvr.createElement(Button_upvr, any_join_result1_2)
			table.insert(var124, var106, Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, tbl_14, tbl_7))
		end
		if arg1.props[Roact_upvr.Children] then
		end
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[FitFrameOnAxis_upvr], {
			BackgroundTransparency = 1;
			minimumSize = UDim2.new(1, 0, 0, arg1.props.buttonHeight);
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = arg1.props.horizontalAlignment;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			contentPadding = UDim.new(0, 12);
			[Roact_upvr.Ref] = arg1.frameRef;
			[Roact_upvr.Change.AbsoluteSize] = arg1.updateFrameSize;
			margin = var100;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
		}, arg1.props[Roact_upvr.Children])
	end)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 295
	if arg1.frameRef.current then
		arg1.updateFrameSize(arg1.frameRef.current)
	end
end
local any_forwardRef_result1 = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 301
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)
any_forwardRef_result1.validateProps = any_extend_result1_upvr.validateProps
return any_forwardRef_result1