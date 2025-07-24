-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:28
-- Luau version 6, Types version 3
-- Time taken: 0.001508 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local ShareGameIcons = require(ShareGame.Spritesheets.ShareGameIcons)
local any_extend_result1 = Roact_upvr.PureComponent:extend("NoFriendsPage")
local any_GetImagePath_result1_upvr = ShareGameIcons:GetImagePath()
local any_GetFrame_result1_upvr = ShareGameIcons:GetFrame("friends")
local var8_upvr = require(ShareGame.getTranslator)()
local Constants_upvr = require(ShareGame.Constants)
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
function any_extend_result1.render(arg1) -- Line 23
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: any_GetImagePath_result1_upvr (readonly)
		[3]: any_GetFrame_result1_upvr (readonly)
		[4]: var8_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: Theme_upvr (readonly)
	]]
	local ZIndex = arg1.props.ZIndex
	local var12_upvw = 0
	local function _() -- Line 29, Named "incrementLayoutOrder"
		--[[ Upvalues[1]:
			[1]: var12_upvw (read and write)
		]]
		var12_upvw += 1
		return var12_upvw
	end
	local module = {
		listLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_3 = {
		BackgroundTransparency = 1;
		Image = any_GetImagePath_result1_upvr;
		ImageRectOffset = any_GetFrame_result1_upvr.offset;
		ImageRectSize = any_GetFrame_result1_upvr.size;
		Size = UDim2.new(0, 72, 0, 72);
	}
	var12_upvw += 1
	local var17 = var12_upvw
	tbl_3.LayoutOrder = var17
	tbl_3.ZIndex = ZIndex
	module.friendsIcon = Roact_upvr.createElement("ImageLabel", tbl_3)
	local tbl_2 = {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 0, 34);
	}
	var17 += 1
	local var19 = var17
	tbl_2.LayoutOrder = var19
	tbl_2.ZIndex = ZIndex
	module.iconToSubtitleSpacer = Roact_upvr.createElement("Frame", tbl_2)
	local tbl_4 = {
		BackgroundTransparency = 1;
		Text = var8_upvr:FormatByKey("Feature.SettingsHub.Label.NoFriendsScreen");
		TextColor3 = Constants_upvr.Color.GRAY5;
		TextTransparency = 0.22;
		TextSize = Theme_upvr.textSize(21);
		TextWrapped = true;
		Font = Theme_upvr.font(Enum.Font.SourceSans);
	}
	var19 += 1
	local var21 = var19
	tbl_4.LayoutOrder = var21
	tbl_4.Size = UDim2.new(0, 280, 0, 42)
	tbl_4.TextYAlignment = Enum.TextYAlignment.Top
	tbl_4.ZIndex = ZIndex
	module.subtitle = Roact_upvr.createElement("TextLabel", tbl_4)
	local tbl = {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 0, 120);
	}
	var21 += 1
	tbl.LayoutOrder = var21
	tbl.ZIndex = ZIndex
	module.bottomSpacer = Roact_upvr.createElement("Frame", tbl)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = ZIndex;
		Position = arg1.props.Position;
	}, module)
end
return any_extend_result1