-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:34
-- Luau version 6, Types version 3
-- Time taken: 0.001791 seconds

local Parent = script:FindFirstAncestor("PhoneUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local Colors_upvr = UIBlox.App.Style.Colors
return function(arg1) -- Line 17, Named "PhoneVerificationStatusOverlay"
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Colors_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0.3;
		BackgroundColor3 = Colors_upvr.Black;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		MiddleContent = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, {
			ListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 24);
			});
			Image = arg1.image;
			Padding = React_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, useStyle_upvr_result1.Tokens.Global.Size_300);
				PaddingRight = UDim.new(0, useStyle_upvr_result1.Tokens.Global.Size_300);
			});
			VerifyingText = React_upvr.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY;
				TextSize = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.Header1.RelativeSize;
				TextColor3 = Colors_upvr.White;
				Text = arg1.text;
				Font = useStyle_upvr_result1.Font.Header1.Font;
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				TextWrapped = true;
			});
		});
	})
end