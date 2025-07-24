-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:38
-- Luau version 6, Types version 3
-- Time taken: 0.002593 seconds

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("InputBoxWithCharacterCounter")
any_extend_result1.defaultProps = {
	initialInputText = "";
	validInputTextColor3 = Color3.fromRGB(0, 255, 0);
	validInputTextTransparency = 0;
	invalidInputTextColor3 = Color3.fromRGB(255, 0, 0);
	invalidInputTextTransparency = 0;
	counterTextPadding = 0;
	characterLimit = 150;
	style = require(SocialLibraries.Components.Style.TestStyle);
}
function any_extend_result1.init(arg1) -- Line 26
	arg1.state = {
		inputText = arg1.props.initialInputText;
	}
	function arg1.textChangedCallback(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.inputText = arg1_2
		arg1:setState(tbl)
	end
end
local Text_upvr = dependencies.Text
local Cryo_upvr = dependencies.Cryo
local CallbackInputBox_upvr = require(script.Parent.CallbackInputBox)
function any_extend_result1.render(arg1) -- Line 38
	--[[ Upvalues[4]:
		[1]: Text_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CallbackInputBox_upvr (readonly)
	]]
	local style = arg1.props.style
	local len = #arg1.state.inputText
	local var14 = len..'/'..arg1.props.characterLimit
	local Font = style.Font.CaptionSubHeader.Font
	local var16 = style.Font.BaseSize * style.Font.CaptionSubHeader.RelativeSize
	local var17
	local var18
	local any_GetTextHeight_result1 = Text_upvr.GetTextHeight(var14, Font, var16, Text_upvr.GetTextWidth(var14, Font, var16))
	if len <= arg1.props.characterLimit then
		var17 = arg1.props.validInputTextColor3
		var18 = arg1.props.validInputTextTransparency
	else
		var17 = arg1.props.invalidInputTextColor3
		var18 = arg1.props.invalidInputTextTransparency
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		inputBoxContainer = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, -any_GetTextHeight_result1);
			LayoutOrder = 1;
		}, {
			border = Roact_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(3, 3, 4, 4);
				Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png";
			});
			inputBox = Roact_upvr.createElement(CallbackInputBox_upvr, Cryo_upvr.Dictionary.join(arg1.props, {
				inputText = arg1.state.inputText;
				textChangedCallback = arg1.textChangedCallback;
			}));
		});
		characterCounter = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, any_GetTextHeight_result1);
			LayoutOrder = 2;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
			});
			padding = Roact_upvr.createElement("UIPadding", {
				PaddingRight = UDim.new(0, arg1.props.counterTextPadding);
			});
			characterCountLabel = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				Text = var14;
				TextColor3 = var17;
				TextTransparency = var18;
				TextSize = var16;
				TextXAlignment = Enum.TextXAlignment.Right;
				TextYAlignment = Enum.TextYAlignment.Top;
				Font = Font;
			});
		});
	})
end
return any_extend_result1