-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:08
-- Luau version 6, Types version 3
-- Time taken: 0.005130 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Dash_upvr = dependencies.Dash
local UIBlox = dependencies.UIBlox
local TextKeys = require(FriendsLanding.Common.TextKeys)
local GetFFlagRenameFriendsToConnectionsFriendsPage = dependencies.GetFFlagRenameFriendsToConnectionsFriendsPage
local tbl_3_upvr = {
	layoutOrder = 0;
	pageLoadingTimeReport = nil;
	pageRenderReport = nil;
}
local noop = Dash_upvr.noop
tbl_3_upvr.openAddFriendsPage = noop
if GetFFlagRenameFriendsToConnectionsFriendsPage() then
	noop = TextKeys.ADD_CONNECTIONS_BTN
else
	noop = TextKeys.ADD_FRIENDS_BTN
end
tbl_3_upvr.addFriendsBtnLabelKey = noop
if GetFFlagRenameFriendsToConnectionsFriendsPage() then
	noop = TextKeys.NO_CONNECTIONS_TEXT
else
	noop = TextKeys.NO_FRIENDS_TEXT
end
tbl_3_upvr.noFriendsTextLabelKey = noop
noop = true
tbl_3_upvr.addFriendsBtnEnabled = noop
local React_upvr = dependencies.React
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useStyle_upvr = UIBlox.Core.Style.useStyle
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NoFriendsViewWidthFixEnabled", false)
local Constants_upvr = require(FriendsLanding.Common.Constants)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local Colors_upvr = UIBlox.App.Style.Colors
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local AppFonts_upvr = require(FriendsLanding.Parent.Style).AppFonts
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
function noop(arg1) -- Line 61, Named "NoFriendsView"
	--[[ Upvalues[15]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: Images_upvr (readonly)
		[10]: Colors_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: AppFonts_upvr (readonly)
		[13]: Button_upvr (readonly)
		[14]: ButtonType_upvr (readonly)
		[15]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 84 start (CF ANALYSIS FAILED)
	local var22 = arg1
	if not var22 then
		var22 = {}
	end
	local any_join_result1_upvr = Dash_upvr.join(tbl_3_upvr, var22)
	React_upvr.useEffect(function() -- Line 64
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.pageLoadingTimeReport then
			any_join_result1_upvr.pageLoadingTimeReport()
		end
		if any_join_result1_upvr.pageRenderReport then
			any_join_result1_upvr.pageRenderReport()
		end
	end, {})
	local var10_result1 = useLocalization_upvr({
		addFriendsBtn = any_join_result1_upvr.addFriendsBtnLabelKey;
		noFriendsText = any_join_result1_upvr.noFriendsTextLabelKey;
		noFriendsHeader = any_join_result1_upvr.noFriendsHeaderKey;
	})
	local useStyle_upvr_result1 = useStyle_upvr()
	local tbl_4 = {}
	if game_DefineFastFlag_result1_upvr then
		local _ = UDim2.fromScale(1, 1)
	else
	end
	tbl_4.Size = UDim2.new(1, 0, 1, -(Constants_upvr.TOP_BAR_HEIGHT + 45))
	tbl_4.LayoutOrder = any_join_result1_upvr.layoutOrder
	tbl_4.BackgroundTransparency = 1
	local tbl_2 = {}
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl_2.AutomaticSize = Enum.AutomaticSize.Y
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [90] #69
	end
	tbl_2.Size = UDim2.new(1, 0, 0, 0)
	tbl_2.BackgroundTransparency = 1
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [108] #84
	end
	tbl_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	if game_DefineFastFlag_result1_upvr then
		local _
	else
	end
	tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
	if any_join_result1_upvr.noFriendsHeaderKey and var10_result1.noFriendsHeader then
		local tbl = {
			text = var10_result1.noFriendsHeader;
			fontStyle = useStyle_upvr_result1.Font.Header1;
			colorStyle = useStyle_upvr_result1.Theme.TextEmphasis;
		}
		local Y = Enum.AutomaticSize.Y
		tbl.automaticSize = Y
		if game_DefineFastFlag_result1_upvr then
			Y = UDim2.new(1, 0, 0, 0)
		else
			Y = UDim2.new(0, 315, 0, 0)
		end
		tbl.size = Y
		tbl.textXAlignment = Enum.TextXAlignment.Center
		tbl.textYAlignment = Enum.TextYAlignment.Center
		tbl.layoutOrder = 2
	else
	end
	;({
		SidePadding = React_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 30);
			PaddingLeft = UDim.new(0, 30);
		});
		UIList = React_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 15);
		});
		Imagelabel = React_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = Images_upvr["icons/graphic/findfriends_xlarge"];
			ImageColor3 = Colors_upvr.White;
			LayoutOrder = 1;
			Size = UDim2.fromOffset(96, 96);
		});
	}).Headerlabel = nil
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [300] #215
	end
	-- KONSTANTERROR: [0] 1. Error Block 84 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [299] 214. Error Block 79 start (CF ANALYSIS FAILED)
	;({
		AutomaticSize = Enum.AutomaticSize.Y;
		TextWrapped = true;
		BackgroundTransparency = 1;
		Font = AppFonts_upvr.default:getDefault();
	}).LayoutOrder = 2
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [319] #231
	end
	-- KONSTANTERROR: [299] 214. Error Block 79 end (CF ANALYSIS FAILED)
end
return noop