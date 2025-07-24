-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:28
-- Luau version 6, Types version 3
-- Time taken: 0.002294 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("SliderEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	labelKey = t.string;
	min = t.number;
	max = t.number;
	stepInterval = t.number;
	keyboardInputStepInterval = t.optional(t.numberPositive);
	value = t.number;
	disabled = t.optional(t.boolean);
	valueChanged = t.callback;
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
	buttonRef = t.optional(t.table);
})
function any_extend_result1.init(arg1) -- Line 29
	arg1.state = {
		isFrameSelectable = true;
	}
end
local GuiService_upvr = game:GetService("GuiService")
local InputLabel_upvr = require(script.Parent.InputLabel)
local SliderWithInput_upvr = require(script.Parent.Parent.Parent.Components.SliderWithInput)
function any_extend_result1.render(arg1) -- Line 35
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: InputLabel_upvr (readonly)
		[4]: SliderWithInput_upvr (readonly)
	]]
	local buttonRef_upvr = arg1.props.buttonRef
	if not buttonRef_upvr then
		buttonRef_upvr = Roact_upvr.createRef()
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 92);
		LayoutOrder = arg1.props.LayoutOrder;
		Selectable = arg1.state.isFrameSelectable;
		[Roact_upvr.Event.SelectionGained] = function() -- Line 45
			--[[ Upvalues[3]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: buttonRef_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			GuiService_upvr.SelectedCoreObject = buttonRef_upvr:getValue()
			arg1:setState({
				isFrameSelectable = false;
			})
		end;
	}, {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24);
			PaddingTop = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 30);
			PaddingBottom = UDim.new(0, 24);
		});
		Label = Roact_upvr.createElement(InputLabel_upvr, {
			Size = UDim2.new(1, 0, 0, 24);
			localizationKey = arg1.props.labelKey;
			Position = UDim2.new(0, 0, 0, 0);
			AnchorPoint = Vector2.new(0, 0);
		});
		Slider = Roact_upvr.createElement(SliderWithInput_upvr, {
			min = arg1.props.min;
			max = arg1.props.max;
			stepInterval = arg1.props.stepInterval;
			keyboardInputStepInterval = arg1.props.keyboardInputStepInterval;
			value = arg1.props.value;
			Position = UDim2.new(0, 0, 0, 32);
			disabled = arg1.props.disabled;
			valueChanged = arg1.props.valueChanged;
			canCaptureFocus = arg1.props.canCaptureFocus;
			isMenuOpen = arg1.props.isMenuOpen;
			sliderDotRef = buttonRef_upvr;
			onSelectionLost = function() -- Line 81, Named "onSelectionLost"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					isFrameSelectable = true;
				})
			end;
			onSelectionGained = function() -- Line 86, Named "onSelectionGained"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					isFrameSelectable = false;
				})
			end;
		});
	})
end
return any_extend_result1