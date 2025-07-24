-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:24
-- Luau version 6, Types version 3
-- Time taken: 0.001696 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local InviteStatus_upvr = Constants_upvr.InviteStatus
local tbl_upvr = {
	[InviteStatus_upvr.Success] = "Feature.SettingsHub.Label.Invited";
	[InviteStatus_upvr.Moderated] = "Feature.SettingsHub.Label.Moderated";
	[InviteStatus_upvr.Pending] = "Feature.SettingsHub.Label.Sending";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("InviteButton")
local Immutable_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable
local RectangleButton_upvr = require(ShareGame.Components.RectangleButton)
local any_font_result1_upvr = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
local var13_upvr = require(ShareGame.getTranslator)()
local any_textSize_result1_upvr = Theme.textSize(19)
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[9]:
		[1]: InviteStatus_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RectangleButton_upvr (readonly)
		[5]: any_font_result1_upvr (readonly)
		[6]: var13_upvr (readonly)
		[7]: any_textSize_result1_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: tbl_upvr (readonly)
	]]
	local inviteStatus = arg1.props.inviteStatus
	if not inviteStatus or inviteStatus == InviteStatus_upvr.Failed then
		local onInvite_upvr = arg1.props.onInvite
		return Roact_upvr.createElement(RectangleButton_upvr, Immutable_upvr.Set(arg1.props, "onClick", function() -- Line 41
			--[[ Upvalues[1]:
				[1]: onInvite_upvr (readonly)
			]]
			onInvite_upvr()
		end), {
			InviteText = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				Font = any_font_result1_upvr;
				Text = var13_upvr:FormatByKey("Feature.SettingsHub.Action.InviteFriend");
				TextSize = any_textSize_result1_upvr;
				TextColor3 = Constants_upvr.Color.WHITE;
				ZIndex = arg1.props.zIndex;
			});
		})
	end
	local var20 = tbl_upvr[inviteStatus]
	if not var20 then
		var20 = "Feature.SettingsHub.Label.Moderated"
	end
	local module = {
		BackgroundTransparency = 1;
		AnchorPoint = arg1.props.anchorPoint;
		Position = arg1.props.position;
		Size = arg1.props.size;
		Font = any_font_result1_upvr;
		Text = var13_upvr:FormatByKey(var20);
		TextSize = any_textSize_result1_upvr;
		TextColor3 = Constants_upvr.Color.WHITE;
		TextXAlignment = Enum.TextXAlignment.Center;
		LayoutOrder = arg1.props.layoutOrder;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.ZIndex = arg1.props.zIndex
	return Roact_upvr.createElement("TextLabel", module)
end
return any_extend_result1