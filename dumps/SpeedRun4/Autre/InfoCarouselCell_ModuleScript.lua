-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:12
-- Luau version 6, Types version 3
-- Time taken: 0.001835 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local padding = arg1.padding
	if not padding then
		padding = useDesignTokens_upvr_result1.Global.Space_50
	end
	local var8 = arg1.iconSize or 18
	local Default = useDesignTokens_upvr_result1.Semantic.Color.Text.Default
	local Emphasis = useDesignTokens_upvr_result1.Semantic.Color.Text.Emphasis
	local tbl = {
		LayoutOrder = 2;
		AutomaticSize = Enum.AutomaticSize.XY;
		Text = arg1.bodyText;
		Font = useDesignTokens_upvr_result1.Semantic.Typography.Subheader.Font;
		TextSize = useDesignTokens_upvr_result1.Semantic.Typography.Subheader.FontSize;
		TextColor3 = Emphasis.Color3;
		TextTransparency = Emphasis.Transparency;
		BackgroundTransparency = 1;
		TextYAlignment = Enum.TextYAlignment.Center;
	}
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, padding);
		});
	}
	local any_createElement_result1 = React_upvr.createElement("TextLabel", {
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		Text = arg1.headerText;
		Font = useDesignTokens_upvr_result1.Semantic.Typography.Body.Font;
		TextSize = useDesignTokens_upvr_result1.Global.FontSize_75;
		TextColor3 = Default.Color3;
		TextTransparency = Default.Transparency;
		BackgroundTransparency = 1;
		TextYAlignment = Enum.TextYAlignment.Center;
	})
	module.Header = any_createElement_result1
	if arg1.icon then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			LayoutOrder = 2;
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			BodyLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, useDesignTokens_upvr_result1.Global.Space_50);
			});
			Icon = React_upvr.createElement(ImageSetLabel_upvr, {
				LayoutOrder = 1;
				Size = UDim2.fromOffset(var8, var8);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Image = arg1.icon;
				ImageColor3 = Emphasis.Color3;
				ImageTransparency = Emphasis.Transparency;
			});
			BodyText = React_upvr.createElement("TextLabel", tbl);
		})
	else
		any_createElement_result1 = React_upvr.createElement("TextLabel", tbl)
	end
	module.Body = any_createElement_result1
	return React_upvr.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.XY;
		TextTransparency = 1;
		Text = "";
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		[React_upvr.Event.Activated] = arg1.onActivated;
	}, module)
end