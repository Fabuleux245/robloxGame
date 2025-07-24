-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:32
-- Luau version 6, Types version 3
-- Time taken: 0.001482 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local udim_upvr = UDim.new(0, 6)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_status_games_people_playing_small_upvr = UIBlox.App.ImageSet.Images["icons/status/games/people-playing_small"]
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local formatNumberWithShortUnits_upvr = require(VirtualEvents.Common.formatNumberWithShortUnits)
return function(arg1) -- Line 25, Named "AttendanceCount"
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: udim_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_status_games_people_playing_small_upvr (readonly)
		[7]: StyledTextLabel_upvr (readonly)
		[8]: formatNumberWithShortUnits_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3_result1 = useStyle_upvr()
	local tbl_2 = {
		interested = "Feature.VirtualEvents.AttendanceBeforeEvent";
		attendingNow = "Feature.VirtualEvents.AttendanceDuringEvent";
	}
	local var13
	if arg1.eventStatus ~= "Ongoing" then
		tbl_2 = false
	else
		tbl_2 = true
	end
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = udim_upvr;
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			Size = UDim2.fromOffset(18, 18);
			Image = icons_status_games_people_playing_small_upvr;
			ImageColor3 = var3_result1.Theme.IconEmphasis.Color;
			BackgroundTransparency = 1;
		});
	}
	local tbl = {
		layoutOrder = 2;
		fontStyle = var3_result1.Font.Header1;
		colorStyle = var3_result1.Theme.TextEmphasis;
	}
	if tbl_2 then
		var13 = arg1.attending
		-- KONSTANTWARNING: GOTO [117] #78
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [115] 77. Error Block 22 start (CF ANALYSIS FAILED)
	var13 = arg1.interested
	if tbl_2 then
		var13 = useLocalization_upvr(tbl_2).attendingNow
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var13 = useLocalization_upvr(tbl_2).interested
	end
	tbl.text = "%s %s":format(formatNumberWithShortUnits_upvr(var13), var13)
	module.Label = React_upvr.createElement(StyledTextLabel_upvr, tbl)
	do
		return React_upvr.createElement("Frame", {
			LayoutOrder = arg1.layoutOrder;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, module)
	end
	-- KONSTANTERROR: [115] 77. Error Block 22 end (CF ANALYSIS FAILED)
end