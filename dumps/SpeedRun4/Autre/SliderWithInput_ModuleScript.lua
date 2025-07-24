-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:02
-- Luau version 6, Types version 3
-- Time taken: 0.007530 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("SliderWithInput")
any_extend_result1.defaultProps = {
	width = UDim.new(1, 0);
}
any_extend_result1.validateProps = t.intersection(t.strictInterface({
	min = t.number;
	max = t.number;
	stepInterval = t.numberPositive;
	keyboardInputStepInterval = t.optional(t.numberPositive);
	value = t.number;
	valueChanged = t.callback;
	disabled = t.optional(t.boolean);
	width = t.optional(t.UDim);
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
	sliderDotRef = t.optional(t.table);
	onSelectionLost = t.callback;
	onSelectionGained = t.callback;
}), function(arg1) -- Line 66
	if arg1.max < arg1.min then
		return false, "min must be less than or equal to max"
	end
	if arg1.max < arg1.value or arg1.value < arg1.min then
		return false, "value must be within min and max"
	end
	return true
end)
function any_extend_result1.init(arg1) -- Line 79
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.textBoxRef = Roact_upvr.createRef()
	arg1.state = {
		textEntryMode = false;
	}
end
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
function any_extend_result1.renderFocusHandler(arg1) -- Line 87
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandler_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
	]]
	local module_2 = {}
	local didBlur
	local function INLINED() -- Internal function, doesn't exist in bytecode
		didBlur = arg1.state.textEntryMode
		return didBlur
	end
	if not arg1.props.canCaptureFocus or not INLINED() then
		didBlur = false
	end
	module_2.isFocused = didBlur
	function didBlur() -- Line 91, Named "didFocus"
		--[[ Upvalues[3]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ContextActionService_upvr (copied, readonly)
		]]
		GuiService_upvr.CoreGuiNavigationEnabled = false
		local value_upvr = arg1.props.value
		ContextActionService_upvr:BindCoreAction("LeaveTextEntryMode", function(arg1_2, arg2) -- Line 100
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: value_upvr (readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				arg1:setState({
					textEntryMode = false;
				})
				local current = arg1.textBoxRef.current
				current.Text = value_upvr
				current:ReleaseFocus()
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end, false, Enum.KeyCode.ButtonB)
	end
	module_2.didFocus = didBlur
	function didBlur() -- Line 112
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: ContextActionService_upvr (copied, readonly)
		]]
		GuiService_upvr.CoreGuiNavigationEnabled = true
		ContextActionService_upvr:UnbindCoreAction("LeaveTextEntryMode")
	end
	module_2.didBlur = didBlur
	return Roact_upvr.createElement(FocusHandler_upvr, module_2) or nil
end
local Cryo_upvr = InGameMenuDependencies.Cryo
local Slider_upvr = require(script.Parent.Slider)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local AssetImage_upvr = require(script.Parent.AssetImage)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ExternalEventConnection_upvr = require(script.Parent.Parent.Utility.ExternalEventConnection)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 119
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Slider_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: AssetImage_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
		[7]: ExternalEventConnection_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local module = {
		Slider = Roact_upvr.createElement(Slider_upvr, Cryo_upvr.Dictionary.join(props_upvr, {
			width = UDim.new(1, -80);
			LayoutOrder = Cryo_upvr.None;
			Position = Cryo_upvr.None;
			AnchorPoint = Cryo_upvr.None;
			keyboardInputStepInterval = Cryo_upvr.None;
			NextSelectionRight = arg1.textBoxRef;
		}));
		TextContainer = withStyle_upvr(function(arg1_3) -- Line 137
			--[[ Upvalues[6]:
				[1]: props_upvr (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: AssetImage_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
				[6]: CursorKind_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var31
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var31 = arg1_3.Theme.TextMuted
				return var31
			end
			if not props_upvr.disabled or not INLINED_2() then
				var31 = arg1_3.Theme.TextDefault
			end
			local module_3 = {
				FocusHandler = arg1:renderFocusHandler();
			}
			local tbl = {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
				Font = arg1_3.Font.Body.Font;
				TextScaled = true;
				ClearTextOnFocus = false;
				TextEditable = not props_upvr.disabled;
				TextColor3 = var31.Color;
				TextTransparency = var31.Transparency;
				Text = tostring(props_upvr.value);
				NextSelectionLeft = arg1.props.sliderDotRef;
				SelectionImageObject = arg2(CursorKind_upvr.InputFields);
				[Roact_upvr.Event.SelectionLost] = arg1.props.onSelectionLost;
				[Roact_upvr.Event.SelectionGained] = arg1.props.onSelectionGained;
				[Roact_upvr.Ref] = arg1.textBoxRef;
			}
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				return function(arg1_4) -- Line 167
					arg1_4:ReleaseFocus(false)
				end
			end
			if not props_upvr.disabled or not INLINED_3() then
			end
			tbl[Roact_upvr.Event.Focused] = function() -- Line 169
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					textEntryMode = true;
				})
			end
			tbl[Roact_upvr.Event.FocusLost] = function(arg1_5, arg2_2) -- Line 172
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr (copied, readonly)
				]]
				arg1:setState({
					textEntryMode = false;
				})
				local tonumber_result1 = tonumber(arg1_5.Text)
				if tonumber_result1 ~= props_upvr.value then
					if tonumber_result1 == nil then
						arg1_5.Text = tostring(props_upvr.value)
						return
					end
					local stepInterval = props_upvr.stepInterval
					if props_upvr.keyboardInputStepInterval then
						stepInterval = props_upvr.keyboardInputStepInterval
					end
					local clamped_2 = math.clamp(math.floor(tonumber_result1 / stepInterval + 0.5) * stepInterval, props_upvr.min, props_upvr.max)
					arg1_5.Text = tostring(clamped_2)
					if clamped_2 ~= props_upvr.value then
						props_upvr.valueChanged(clamped_2)
					end
				end
			end
			module_3.Box = Roact_upvr.createElement("TextBox", tbl, {
				TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
					MinTextSize = arg1_3.Font.Body.RelativeMinSize * arg1_3.Font.BaseSize;
					MaxTextSize = arg1_3.Font.Body.RelativeSize * arg1_3.Font.BaseSize;
				});
			})
			return Roact_upvr.createElement(AssetImage_upvr.Label, {
				BackgroundTransparency = 1;
				imageKey = "RoundedRect";
				ImageTransparency = arg1_3.Theme.BackgroundUIContrast.Transparency;
				ImageColor3 = arg1_3.Theme.BackgroundUIContrast.Color;
				Size = UDim2.new(0, 64, 0, 36);
				Position = UDim2.new(1, 0, 0.5, 0);
				AnchorPoint = Vector2.new(1, 0.5);
			}, module_3)
		end);
	}
	local var45 = not props_upvr.disabled
	if var45 then
		var45 = Roact_upvr.createElement
		var45 = var45(ExternalEventConnection_upvr, {
			event = UserInputService_upvr.InputBegan;
			callback = function(arg1_6, arg2_3) -- Line 210, Named "callback"
				--[[ Upvalues[3]:
					[1]: UserInputService_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: props_upvr (readonly)
				]]
				local var49
				if var49 ~= Enum.UserInputType.Keyboard then
				else
					var49 = UserInputService_upvr:GetFocusedTextBox()
					if var49 ~= arg1.textBoxRef.current then return end
					var49 = 0
					if arg1_6.KeyCode == Enum.KeyCode.Up then
						var49 = 1
					elseif arg1_6.KeyCode == Enum.KeyCode.Down then
						var49 = -1
					end
					if UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightShift) then
						var49 *= 10
					end
					if var49 ~= 0 then
						local clamped = math.clamp(math.floor((props_upvr.value + props_upvr.stepInterval * var49) / props_upvr.stepInterval + 0.5) * props_upvr.stepInterval, props_upvr.min, props_upvr.max)
						if clamped ~= props_upvr.value then
							props_upvr.valueChanged(clamped)
						end
					end
				end
			end;
		})
	end
	module.UserInputConnection = var45
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(props_upvr.width.Scale, props_upvr.width.Offset, 0, 36);
		Position = props_upvr.Position;
		LayoutOrder = props_upvr.LayoutOrder;
	}, module)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 250
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_7) -- Line 251
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_7)
	end)
end
return any_extend_result1