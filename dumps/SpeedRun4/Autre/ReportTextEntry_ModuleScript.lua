-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:24
-- Luau version 6, Types version 3
-- Time taken: 0.001642 seconds

local CorePackages = game:GetService("CorePackages")
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
return function(arg1) -- Line 10, Named "ReportTextEntry"
	--[[ Upvalues[2]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var2_result1 = useStyle_upvr()
	local Theme = var2_result1.Theme
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 40 + var2_result1.Tokens.Global.Space_300 + 20);
		BackgroundTransparency = var2_result1.Theme.BackgroundDefault.Transparency;
		BackgroundColor3 = var2_result1.Theme.BackgroundUIDefault.Color;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 10);
			PaddingRight = UDim.new(0, 10);
			PaddingTop = UDim.new(0, 10);
			PaddingBottom = UDim.new(0, 10);
		});
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		AbuseReportsText = React_upvr.createElement("TextBox", {
			Size = UDim2.new(1, 0, 0, 40 + var2_result1.Tokens.Global.Space_300);
			AutomaticSize = Enum.AutomaticSize.Y;
			Position = UDim2.new(0, 0, 0, 0);
			AnchorPoint = Vector2.new(0, 0);
			BackgroundColor3 = Theme.BackgroundUIDefault.Color;
			PlaceholderText = arg1.placeholderText;
			Font = var2_result1.Font.Body.Font;
			Text = arg1.text;
			TextSize = var2_result1.Tokens.Global.FontSize_100;
			TextColor3 = Theme.TextDefault.Color;
			TextTransparency = Theme.TextDefault.Transparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			BackgroundTransparency = Theme.BackgroundDefault.Transparency;
			BorderSizePixel = 0;
			LayoutOrder = 1;
			RichText = false;
			MultiLine = true;
			TextWrapped = true;
			ClearTextOnFocus = false;
			OverlayNativeInput = true;
			[React_upvr.Event.FocusLost] = function() -- Line 53
			end;
			[React_upvr.Event.Focused] = function() -- Line 54
			end;
			[React_upvr.Change.AbsoluteSize] = function() -- Line 55
			end;
			[React_upvr.Change.Text] = function(arg1_2) -- Line 56
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.text ~= arg1_2.Text then
					arg1.onUpdate(arg1_2.Text)
				end
			end;
		});
	})
end