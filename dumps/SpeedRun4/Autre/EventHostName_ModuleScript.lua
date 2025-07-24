-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:41
-- Luau version 6, Types version 3
-- Time taken: 0.001857 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Emoji_upvr = UIBlox.App.Emoji.Enum.Emoji
local React_upvr = require(VirtualEvents.Parent.React)
local EmojiTextLabel_upvr = UIBlox.Core.Text.EmojiTextLabel
return function(arg1) -- Line 19, Named "EventHostName"
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: Emoji_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: EmojiTextLabel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	if arg1.host.hasVerifiedBadge then
	else
	end
	local _, any_useState_result2_upvr = React_upvr.useState(0)
	local function _(arg1_2) -- Line 25
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2.TextSize)
	end
	local _ = {any_useState_result2_upvr}
	local tbl = {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}
	;({}).Layout = React_upvr.createElement("UIListLayout", {
		Padding = UDim.new(0, 4);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	if arg1.host.hostType == "group" then
		-- KONSTANTWARNING: GOTO [104] #70
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [103] 69. Error Block 28 start (CF ANALYSIS FAILED)
	;({
		LayoutOrder = 1;
		BackgroundColor3 = useStyle_upvr_result1.Theme.Badge.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.Badge.Transparency;
	}).Image = string.format("rbxthumb://type=%s&id=%i&w=150&h=150", "AvatarHeadShot", arg1.host.hostId)
	if arg1.changeHostImageSize then
		-- KONSTANTWARNING: GOTO [125] #85
	end
	-- KONSTANTERROR: [103] 69. Error Block 28 end (CF ANALYSIS FAILED)
end