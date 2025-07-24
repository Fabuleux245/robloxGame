-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:22
-- Luau version 6, Types version 3
-- Time taken: 0.001235 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsErrorPage")
local var5_upvr = require(ShareGame.getTranslator)()
local Constants_upvr = require(ShareGame.Constants)
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Theme_upvr (readonly)
	]]
	local ZIndex = arg1.props.ZIndex
	local var9_upvw = 0
	local function _() -- Line 22, Named "incrementLayoutOrder"
		--[[ Upvalues[1]:
			[1]: var9_upvw (read and write)
		]]
		var9_upvw += 1
		return var9_upvw
	end
	local module = {
		listLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl = {
		BackgroundTransparency = 1;
		Text = var5_upvr:FormatByKey("Feature.SettingsHub.Label.LoadingFriendsListFailed");
		TextColor3 = Constants_upvr.Color.GRAY5;
		TextTransparency = 0.22;
		TextSize = Theme_upvr.textSize(21);
		TextWrapped = true;
		Font = Theme_upvr.font(Enum.Font.SourceSans);
	}
	var9_upvw += 1
	tbl.LayoutOrder = var9_upvw
	tbl.Size = UDim2.new(0, 280, 0, 42)
	tbl.TextYAlignment = Enum.TextYAlignment.Top
	tbl.ZIndex = ZIndex
	module.subtitle = Roact_upvr.createElement("TextLabel", tbl)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = ZIndex;
	}, module)
end
return any_extend_result1