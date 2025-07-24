-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:19
-- Luau version 6, Types version 3
-- Time taken: 0.003050 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationDetails")
local any_textSize_result1_upvr_3 = Theme.textSize(16, "ConversationDetails")
local any_font_result1_upvr = Theme.font(Enum.Font.SourceSans, "ConversationDetails")
local GRAY3_upvr = Constants_upvr.Color.GRAY3
local any_textSize_result1_upvr = Theme.textSize(16, "ConversationDetails")
local var11_upvr = require(ShareGame.getTranslator)()
local any_font_result1_upvr_3 = Theme.font(Enum.Font.SourceSans, "ConversationDetails")
local any_textSize_result1_upvr_2 = Theme.textSize(19)
local any_font_result1_upvr_2 = Theme.font(Enum.Font.SourceSans, "ConversationDetails")
local WHITE_upvr = Constants_upvr.Color.WHITE
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: any_textSize_result1_upvr_3 (readonly)
		[3]: any_font_result1_upvr (readonly)
		[4]: GRAY3_upvr (readonly)
		[5]: any_textSize_result1_upvr (readonly)
		[6]: var11_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: any_font_result1_upvr_3 (readonly)
		[9]: any_textSize_result1_upvr_2 (readonly)
		[10]: any_font_result1_upvr_2 (readonly)
		[11]: WHITE_upvr (readonly)
	]]
	local subtitle = arg1.props.subtitle
	local presence = arg1.props.presence
	local zIndex = arg1.props.zIndex
	local var19
	if subtitle ~= nil then
		var19 = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, any_textSize_result1_upvr_3);
			Text = subtitle;
			Font = any_font_result1_upvr;
			TextColor3 = GRAY3_upvr;
			TextSize = any_textSize_result1_upvr_3;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			LayoutOrder = 1;
			ZIndex = zIndex;
		})
	end
	local var21
	if presence ~= nil then
		var21 = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, any_textSize_result1_upvr);
			Text = var11_upvr:FormatByKey(Constants_upvr.PresenceTextKey[presence]);
			Font = any_font_result1_upvr_3;
			TextColor3 = Constants_upvr.PresenceColors[presence];
			TextSize = any_textSize_result1_upvr;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 2;
			ZIndex = zIndex;
		})
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.props.size;
		LayoutOrder = arg1.props.layoutOrder;
		ZIndex = zIndex;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 2);
		});
		Title = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, any_textSize_result1_upvr_2);
			Text = arg1.props.title or "";
			Font = any_font_result1_upvr_2;
			TextColor3 = WHITE_upvr;
			TextSize = any_textSize_result1_upvr_2;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			LayoutOrder = 0;
			ZIndex = zIndex;
		});
		Subtitle = var19;
		Presence = var21;
	})
end
return any_extend_result1