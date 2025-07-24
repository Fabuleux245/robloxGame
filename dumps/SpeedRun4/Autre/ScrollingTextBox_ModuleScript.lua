-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:47
-- Luau version 6, Types version 3
-- Time taken: 0.002670 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1_upvr = Roact_upvr.Component:extend("ScrollingTextBox")
local TextService_upvr = game:GetService("TextService")
function any_extend_result1_upvr.init(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	function arg1.adjustOffset() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.clipBox.current and arg1.textboxRef.current then
			local fontDims = arg1.state.fontDims
			local var7 = arg1.textboxRef.current.CursorPosition - 1
			local var8 = var7 - math.ceil(arg1.state.innerXOffset / fontDims.X)
			local floored = math.floor(arg1.clipBox.current.AbsoluteSize.X * 0.9 / fontDims.X)
			if floored < var8 then
				arg1:setState({
					innerXOffset = (var7 - floored) * fontDims.X;
				})
				return
			end
			if var8 < 0 then
				arg1:setState({
					innerXOffset = var7 * fontDims.X;
				})
			end
		end
	end
	arg1.clipBox = Roact_upvr.createRef()
	local forwardRef = arg1.props.forwardRef
	if not forwardRef then
		forwardRef = Roact_upvr.createRef()
	end
	arg1.textboxRef = forwardRef
	arg1.state = {
		fontDims = TextService_upvr:GetTextSize('A', arg2.TextSize, arg2.Font, Vector2.new(0, 0));
		innerXOffset = 0;
	}
end
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1_upvr.didMount(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if not arg1.onFocusConnection then
		arg1.onFocusConnection = UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 51
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.textboxRef.current and arg1.textboxRef.current:IsFocused() then
				if arg1_2.KeyCode == Enum.KeyCode.Home then
					arg1.textboxRef.current.CursorPosition = 0
					return
				end
				if arg1_2.KeyCode == Enum.KeyCode.End then
					arg1.textboxRef.current.CursorPosition = #arg1.textboxRef.current.text + 1
					return
				end
				arg1.adjustOffset()
			end
		end)
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 66
	if arg1.onFocusConnection then
		arg1.onFocusConnection:Disconnect()
		arg1.onFocusConnection = nil
	end
end
function any_extend_result1_upvr.render(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local innerXOffset = arg1.state.innerXOffset
	return Roact_upvr.createElement("Frame", {
		Position = arg1.props.Position;
		Size = arg1.props.Size;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		[Roact_upvr.Ref] = arg1.clipBox;
	}, {
		TextBox = Roact_upvr.createElement("TextBox", {
			Position = UDim2.new(0, -innerXOffset, 0, 0);
			Size = UDim2.new(1, innerXOffset, 1, 0);
			BackgroundTransparency = 1;
			ShowNativeInput = arg1.props.ShowNativeInput;
			ClearTextOnFocus = arg1.props.ClearTextOnFocus;
			TextColor3 = arg1.props.TextColor3;
			TextXAlignment = 0;
			TextSize = arg1.props.TextSize;
			Text = arg1.props.Text;
			Font = arg1.props.Font;
			PlaceholderText = arg1.props.PlaceholderText;
			[Roact_upvr.Ref] = arg1.textboxRef;
			[Roact_upvr.Change.CursorPosition] = arg1.adjustOffset;
			[Roact_upvr.Event.FocusLost] = arg1.props.TextBoxFocusLost;
		});
	})
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 119
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)