-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:26
-- Luau version 6, Types version 3
-- Time taken: 0.001589 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local View_upvr = Foundation_upvr.View
local Colors_upvr = require(Parent.UIBlox).App.Style.Colors
return function(arg1) -- Line 26
	--[[ Upvalues[7]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: Colors_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	return React_upvr.createElement(View_upvr, {
		LayoutOrder = 2;
		onActivated = useCallback_upvr(function() -- Line 46
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (readonly)
			]]
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:CaptureFocus()
			end
		end, {});
		stateLayer = {
			affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
		};
		tag = "bg-action-subtle shrink size-full-full";
	}, {
		TextBox = React_upvr.createElement("TextBox", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0.3);
			BackgroundTransparency = 1;
			ClearTextOnFocus = false;
			ClipsDescendants = true;
			Font = Enum.Font.BuilderSans;
			MaxVisibleGraphemes = arg1.charLimit;
			MultiLine = false;
			PlaceholderColor3 = Colors_upvr.Graphite;
			PlaceholderText = useLocalization_upvr({
				postCaptionPlaceholder = "Feature.Captures.Label.PostCaptionPlaceholder";
			}).postCaptionPlaceholder;
			ShowNativeInput = true;
			Text = arg1.inputText;
			TextColor3 = useTokens_upvr().Color.ActionStandard.Foreground.Color3;
			TextSize = 18;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			[React_upvr.Change.Text] = useCallback_upvr(function(arg1_2) -- Line 34
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local utf8_len_result1 = utf8.len(arg1_2.text)
				if utf8_len_result1 ~= nil and arg1.charLimit <= utf8_len_result1 then
					local string_sub_result1 = string.sub(arg1_2.text, 1, utf8.offset(arg1_2.text, arg1.charLimit))
					arg1.setInputText(string_sub_result1)
					arg1_2.Text = string_sub_result1
				else
					arg1.setInputText(arg1_2.text)
				end
			end, {});
			ref = any_useRef_result1_upvr;
		});
	})
end