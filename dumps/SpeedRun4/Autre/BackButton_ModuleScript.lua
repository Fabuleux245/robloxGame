-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:18
-- Luau version 6, Types version 3
-- Time taken: 0.002464 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("BackButton")
any_extend_result1_upvr.IconType = {
	Arrow = "Arrow";
	Cross = "Cross";
	None = "None";
}
any_extend_result1_upvr.defaultProps = {
	iconType = any_extend_result1_upvr.IconType.None;
}
local tbl_upvr = {
	[any_extend_result1_upvr.IconType.Arrow] = "back";
	[any_extend_result1_upvr.IconType.Cross] = "cross";
}
local ShareGameIcons_upvr = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)
local IconButton_upvr = require(ShareGame.Components.IconButton)
local function var8_upvr(arg1) -- Line 36
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: ShareGameIcons_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: IconButton_upvr (readonly)
	]]
	local var11 = tbl_upvr[arg1.iconType]
	if var11 then
		return Roact_upvr.createElement(IconButton_upvr, {
			visible = arg1.visible;
			anchorPoint = arg1.anchorPoint;
			position = arg1.position;
			size = arg1.size;
			zIndex = arg1.zIndex;
			onClick = arg1.onClick;
			iconHorizontalAlignment = Enum.HorizontalAlignment.Left;
			iconSpritePath = ShareGameIcons_upvr:GetImagePath();
			iconSpriteFrame = ShareGameIcons_upvr:GetFrame(var11);
		})
	end
end
local RectangleButton_upvr = require(ShareGame.Components.RectangleButton)
local var14_upvr = require(ShareGame.getTranslator)()
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local Constants_upvr = require(ShareGame.Constants)
function any_extend_result1_upvr.render(arg1) -- Line 65
	--[[ Upvalues[7]:
		[1]: any_extend_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RectangleButton_upvr (readonly)
		[4]: var14_upvr (readonly)
		[5]: Theme_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: var8_upvr (readonly)
	]]
	if arg1.props.iconType == any_extend_result1_upvr.IconType.None then
		return Roact_upvr.createElement(RectangleButton_upvr, arg1.props, {
			TextLabel = Roact_upvr.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0.5, 0);
				Text = var14_upvr:FormatByKey("Feature.SettingsHub.Action.InviteFriendsBack");
				TextSize = Theme_upvr.textSize(24, "BackButton");
				TextColor3 = Constants_upvr.Color.WHITE;
				Font = Theme_upvr.font(Enum.Font.SourceSansSemibold, "BackButton");
				ZIndex = arg1.props.zIndex;
			});
		})
	end
	return var8_upvr(arg1.props)
end
return any_extend_result1_upvr