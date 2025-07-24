-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:45
-- Luau version 6, Types version 3
-- Time taken: 0.000896 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local SidePadding_upvr = require(GameInvite.GameInviteConstants).Layout.SidePadding
return function(arg1) -- Line 17
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SidePadding_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	return React_upvr.createElement("Frame", {
		Size = arg1.size;
		LayoutOrder = arg1.layoutOrder;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, SidePadding_upvr);
			PaddingRight = UDim.new(0, SidePadding_upvr);
		});
		CustomText = React_upvr.createElement("TextLabel", {
			Text = arg1.promptMessage;
			TextSize = Font.BaseSize * Font.Body.RelativeSize;
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextEmphasis.Transparency;
			Font = Font.Body.Font;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			TextTruncate = Enum.TextTruncate.AtEnd;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		});
	})
end