-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:30
-- Luau version 6, Types version 3
-- Time taken: 0.009304 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("CallbackInputBox")
any_extend_result1.defaultProps = {
	initialInputText = "";
	inputTextFont = Enum.Font.BuilderSans;
	inputTextColor3 = Color3.new(1, 0, 1);
	inputTextSize = 14;
	inputTextYAlignment = Enum.TextYAlignment.Center;
	inputTextXAlignment = Enum.TextXAlignment.Center;
	inputTextTransparency = 0;
	placeholderTextTransparency = 0.6;
	placeholderTextColor3 = Color3.new(1, 0, 0);
	placeholderText = "Test placeholder text";
	clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png";
	clearIconColor3 = Color3.new(1, 1, 0);
	clearIconTransparency = 0;
	clearButtonSize = 24;
	clipsDescendants = true;
	manualFocusRelease = false;
	captureFocusOnMount = false;
	multiLine = false;
	textWrapped = false;
	showCancelIconOnLoad = false;
	textInputType = Enum.TextInputType.Default;
	returnKeyType = Enum.ReturnKeyType.Default;
	clearButtonDisabled = nil;
	textChangedCallback = nil;
	focusChangedCallback = function() -- Line 38, Named "focusChangedCallback"
	end;
	onSelectCallback = function() -- Line 39, Named "onSelectCallback"
	end;
	returnPressedFromOnScreenKeyboardCallback = function() -- Line 40, Named "returnPressedFromOnScreenKeyboardCallback"
	end;
	inputBoxRef = nil;
	[Roact_upvr.Change.AbsoluteSize] = function() -- Line 44
	end;
}
function any_extend_result1.init(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.clearRef = Roact_upvr.createRef()
	local inputBoxRef = arg1.props.inputBoxRef
	if not inputBoxRef then
		inputBoxRef = Roact_upvr.createRef()
	end
	arg1.inputBoxRef = inputBoxRef
	arg1.inputText = arg1.props.initialInputText
	arg1.textChangedEventUnlocked = false
	function arg1.focusTextbox() -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onSelectCallback()
		if not arg1.inputBoxRef.current:IsFocused() then
			arg1.inputBoxRef.current:captureFocus()
		end
	end
end
local ImageSetLabel_upvr = dependencies.UIBlox.Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
	]]
	local placeholderTextTransparency_upvr = arg1.props.placeholderTextTransparency
	local inputTextTransparency_upvr = arg1.props.inputTextTransparency
	local var11
	if not arg1.inputText or arg1.inputText == "" then
		var11 = placeholderTextTransparency_upvr
	else
		var11 = inputTextTransparency_upvr
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		inputBox = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			LayoutOrder = 1;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			inputTextBox = Roact_upvr.createElement("TextBox", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -arg1.props.clearButtonSize, 1, 0);
				Position = UDim2.new(0, 0, 0, 0);
				TextColor3 = arg1.props.inputTextColor3;
				TextSize = arg1.props.inputTextSize;
				TextTransparency = var11;
				Font = arg1.props.inputTextFont;
				PlaceholderText = arg1.props.placeholderText;
				PlaceholderColor3 = arg1.props.placeholderTextColor3;
				TextXAlignment = arg1.props.inputTextXAlignment;
				TextYAlignment = arg1.props.inputTextYAlignment;
				OverlayNativeInput = true;
				ClearTextOnFocus = false;
				ClipsDescendants = arg1.props.clipsDescendants;
				LayoutOrder = 1;
				ManualFocusRelease = arg1.props.manualFocusRelease;
				MultiLine = arg1.props.multiLine;
				TextWrapped = arg1.props.textWrapped;
				TextInputType = arg1.props.textInputType;
				ReturnKeyType = arg1.props.returnKeyType;
				[Roact_upvr.Event.ReturnPressedFromOnScreenKeyboard] = arg1.props.returnPressedFromOnScreenKeyboardCallback;
				[Roact_upvr.Event.TouchTap] = arg1.focusTextbox;
				[Roact_upvr.Event.Focused] = function(arg1_2) -- Line 131
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: inputTextTransparency_upvr (readonly)
						[3]: placeholderTextTransparency_upvr (readonly)
					]]
					if arg1.inputBoxRef.current and arg1.inputBoxRef.current.Text ~= "" then
						if arg1.clearRef.current and not arg1.props.clearButtonDisabled then
							arg1.clearRef.current.Visible = true
						end
						arg1_2.TextColor3 = arg1.props.inputTextColor3
						arg1_2.TextTransparency = inputTextTransparency_upvr
					else
						arg1_2.TextColor3 = arg1.props.placeholderTextColor3
						arg1_2.TextTransparency = placeholderTextTransparency_upvr
					end
					arg1.props.focusChangedCallback(true)
				end;
				[Roact_upvr.Event.FocusLost] = function(arg1_3, arg2) -- Line 147
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: placeholderTextTransparency_upvr (readonly)
					]]
					if arg1.inputBoxRef.current and arg1.inputBoxRef.current.Text == "" then
						arg1_3.TextColor3 = arg1.props.placeholderTextColor3
						arg1_3.TextTransparency = placeholderTextTransparency_upvr
					end
					arg1.props.focusChangedCallback(false, arg2)
				end;
				[Roact_upvr.Change.Text] = function(arg1_4) -- Line 156
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: inputTextTransparency_upvr (readonly)
						[3]: placeholderTextTransparency_upvr (readonly)
					]]
					if arg1_4.Text ~= "" or arg1.textChangedEventUnlocked then
						if arg1_4.Text ~= "" then
							if arg1.clearRef.current and not arg1.props.clearButtonDisabled then
								arg1.clearRef.current.Visible = true
							end
							arg1_4.TextColor3 = arg1.props.inputTextColor3
							arg1_4.TextTransparency = inputTextTransparency_upvr
						else
							if arg1.clearRef.current then
								arg1.clearRef.current.Visible = false
							end
							arg1_4.TextColor3 = arg1.props.placeholderTextColor3
							arg1_4.TextTransparency = placeholderTextTransparency_upvr
						end
						arg1.inputText = arg1_4.Text
						if arg1.props.textChangedCallback then
							arg1.props.textChangedCallback(arg1_4.Text)
						end
					end
					arg1.textChangedEventUnlocked = true
				end;
				[Roact_upvr.Ref] = arg1.inputBoxRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.props[Roact_upvr.Change.AbsoluteSize];
			});
			Clear = Roact_upvr.createElement("ImageButton", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, arg1.props.clearButtonSize, 1, 0);
				AutoButtonColor = false;
				LayoutOrder = 2;
				Visible = not arg1.props.clearButtonDisabled;
				[Roact_upvr.Event.Activated] = function() -- Line 195
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					if arg1.inputBoxRef.current then
						arg1.inputBoxRef.current.Text = ""
					end
					arg1.inputText = ""
					if arg1.clearRef.current then
						arg1.clearRef.current.Visible = false
					end
				end;
			}, {
				layout = Roact_upvr.createElement("UIListLayout", {
					VerticalAlignment = "Center";
					HorizontalAlignment = "Center";
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Size = UDim2.new(0, arg1.props.clearButtonSize, 0, arg1.props.clearButtonSize);
					Image = arg1.props.clearIcon;
					ImageColor3 = arg1.props.clearIconColor3;
					ImageTransparency = arg1.props.clearIconTransparency;
					Visible = arg1.props.showCancelIconOnLoad;
					[Roact_upvr.Ref] = arg1.clearRef;
				});
			});
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 227
	if arg1.inputBoxRef.current then
		arg1.inputBoxRef.current.Text = arg1.inputText
		if arg1.props.captureFocusOnMount then
			spawn(function() -- Line 232
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.inputBoxRef then
					if arg1.inputBoxRef.current then
						arg1.inputBoxRef.current:captureFocus()
					end
				end
			end)
		end
	end
end
return any_extend_result1