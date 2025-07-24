-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:56
-- Luau version 6, Types version 3
-- Time taken: 0.005494 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SliderTextInput")
any_extend_result1.validateProps = t.strictInterface({
	position = t.optional(t.union(t.UDim2, t.table));
	anchorPoint = t.optional(t.Vector2);
	value = t.number;
	min = t.number;
	max = t.number;
	disabled = t.optional(t.boolean);
	stepInterval = t.numberPositive;
	onValueChanged = t.callback;
	layoutOrder = t.optional(t.integer);
})
any_extend_result1.defaultProps = {
	disabled = false;
}
function any_extend_result1.init(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.textBoxRef = Roact_upvr.createRef()
end
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
local divideTransparency_upvr = require(Parent.UIBlox.Utility.divideTransparency)
local ImageSetComponent_upvr = require(Parent.UIBlox.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.UIBlox.App.ImageSet.Images)
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: divideTransparency_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: EventConnection_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: divideTransparency_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: EventConnection_upvr (copied, readonly)
			[7]: UserInputService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var14
		if arg1.props.disabled then
			var14 = 2
		else
			var14 = 1
		end
		local module = {
			Border = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
				BackgroundTransparency = 1;
				Image = Images_upvr["component_assets/circle_17_stroke_1"];
				ImageColor3 = arg1_2.Theme.Divider.Color;
				ImageTransparency = divideTransparency_upvr(arg1_2.Theme.Divider.Transparency, var14);
				ScaleType = Enum.ScaleType.Slice;
				Size = UDim2.fromScale(1, 1);
				SliceCenter = Rect.new(8, 8, 8, 8);
			});
		}
		local tbl = {
			[Roact_upvr.Ref] = arg1.textBoxRef;
			BackgroundTransparency = 1;
			ClearTextOnFocus = false;
			Font = arg1_2.Font.Body.Font;
			TextSize = arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize;
			TextColor3 = arg1_2.Theme.TextDefault.Color;
			TextTransparency = divideTransparency_upvr(arg1_2.Theme.TextDefault.Transparency, var14);
			Size = UDim2.fromScale(1, 1);
			Text = tostring(arg1.props.value);
			TextScaled = true;
			TextEditable = not arg1.props.disabled;
			ZIndex = 2;
		}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			return function(arg1_3) -- Line 86
				arg1_3:ReleaseFocus()
			end
		end
		if not arg1.props.disabled or not INLINED() then
		end
		tbl[Roact_upvr.Event.Focused] = nil
		tbl[Roact_upvr.Event.FocusLost] = function(arg1_4, arg2) -- Line 89
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			local tonumber_result1 = tonumber(arg1_4.Text)
			if tonumber_result1 == nil then
				arg1_4.Text = tostring(arg1.props.value)
			else
				arg1.props.onValueChanged(math.clamp(math.floor(tonumber_result1 / arg1.props.stepInterval + 0.5) * arg1.props.stepInterval, arg1.props.min, arg1.props.max))
			end
		end
		module.TextBox = Roact_upvr.createElement("TextBox", tbl, {
			TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MinTextSize = arg1_2.Font.Body.RelativeMinSize * arg1_2.Font.BaseSize;
				MaxTextSize = arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize;
			});
		})
		local var24 = not arg1.props.disabled
		if var24 then
			var24 = Roact_upvr.createElement
			var24 = var24(EventConnection_upvr, {
				event = UserInputService_upvr.InputBegan;
				callback = function(arg1_5, arg2) -- Line 113, Named "callback"
					--[[ Upvalues[2]:
						[1]: UserInputService_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					local var28
					if var28 ~= Enum.UserInputType.Keyboard then
					else
						var28 = UserInputService_upvr:GetFocusedTextBox()
						if var28 ~= arg1.textBoxRef.current then return end
						var28 = 0
						if arg1_5.KeyCode == Enum.KeyCode.Up then
							var28 = 1
						elseif arg1_5.KeyCode == Enum.KeyCode.Down then
							var28 = -1
						end
						if UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightShift) then
							var28 *= 10
						end
						if var28 ~= 0 then
							local clamped = math.clamp(math.floor((arg1.props.value + arg1.props.stepInterval * var28) / arg1.props.stepInterval + 0.5) * arg1.props.stepInterval, arg1.props.min, arg1.props.max)
							if clamped ~= arg1.props.value then
								arg1.props.onValueChanged(clamped)
							end
						end
					end
				end;
			})
		end
		module.UserInputConnection = var24
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			BackgroundTransparency = 1;
			Image = Images_upvr["component_assets/circle_16"];
			ImageColor3 = arg1_2.Theme.BackgroundUIContrast.Color;
			ImageTransparency = divideTransparency_upvr(arg1_2.Theme.BackgroundUIContrast.Transparency, var14);
			Position = arg1.props.position;
			AnchorPoint = arg1.props.anchorPoint;
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.fromOffset(56, 36);
			SliceCenter = Rect.new(8, 8, 8, 8);
			LayoutOrder = arg1.props.layoutOrder;
		}, module)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 154
	pcall(function() -- Line 157
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.textBoxRef.current.TextInputType = Enum.TextInputType.Number
	end)
end
return any_extend_result1