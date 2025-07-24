-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:36
-- Luau version 6, Types version 3
-- Time taken: 0.003381 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local UIBlox = dependencies.UIBlox
local useLocalization_upvr = dependencies.useLocalization
local TextKeys_upvr = require(ContactImporter.Common.TextKeys)
local useStyle_upvr = dependencies.useStyle
local React_upvr = dependencies.React
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local icons_graphic_contacts_large_upvr = UIBlox.App.ImageSet.Images["icons/graphic/contacts_large"]
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
return function(arg1) -- Line 29, Named "FindFriendsBanner"
	--[[ Upvalues[11]:
		[1]: useLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: icons_graphic_contacts_large_upvr (readonly)
		[8]: StyledTextLabel_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local showMatchedContacts = arg1.showMatchedContacts
	local var16 = not showMatchedContacts
	local var17
	if var16 then
		showMatchedContacts = 122
	else
		showMatchedContacts = 0
	end
	local tbl_9 = {
		findFriendsButton = TextKeys_upvr.CONTACTS_FIND_FRIENDS_BUTTON;
		findFriendsDescription = TextKeys_upvr.CONTACTS_FIND_FRIENDS_DESCRIPTION;
		findFriendsDescriptionPV = TextKeys_upvr.CONTACTS_FIND_FRIENDS_DESCRIPTION_PV;
	}
	local useStyle_upvr_result1 = useStyle_upvr()
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 12);
		});
	}
	local tbl_4 = {
		AnchorPoint = Vector2.new(0, 0.5);
	}
	var17 = IconSize_upvr.Large
	tbl_4.Size = UDim2.new(0, IconSize_upvr.Large, 0, var17)
	tbl_4.ScaleType = Enum.ScaleType.Fit
	tbl_4.LayoutOrder = 1
	tbl_4.BackgroundTransparency = 1
	tbl_4.Image = icons_graphic_contacts_large_upvr
	tbl_4.ImageTransparency = useStyle_upvr_result1.Theme.SystemPrimaryDefault.Transparency
	module.ImageIcon = React_upvr.createElement(ImageSetLabel_upvr, tbl_4)
	local tbl_5 = {
		BackgroundTransparency = 1;
	}
	var17 = showMatchedContacts + 48
	var17 = 48
	tbl_5.Size = UDim2.new(1, -(var17 + 12), 0, var17)
	tbl_5.LayoutOrder = 2
	local tbl_10 = {}
	local tbl_2 = {}
	var17 = Enum.HorizontalAlignment.Center
	tbl_2.HorizontalAlignment = var17
	var17 = Enum.VerticalAlignment.Center
	tbl_2.VerticalAlignment = var17
	tbl_10.textLayout = React_upvr.createElement("UIListLayout", tbl_2)
	local tbl_3 = {}
	if var16 then
		var17 = useLocalization_upvr(tbl_9).findFriendsDescription
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var17 = useLocalization_upvr(tbl_9).findFriendsDescriptionPV
	end
	tbl_3.text = var17
	var17 = useStyle_upvr_result1.Font.CaptionBody
	tbl_3.fontStyle = var17
	var17 = useStyle_upvr_result1.Theme.TextDefault
	tbl_3.colorStyle = var17
	var17 = UDim2.new(1, 0, 1, 0)
	tbl_3.size = var17
	var17 = 1
	tbl_3.lineHeight = var17
	var17 = Enum.TextTruncate.AtEnd
	tbl_3.textTruncate = var17
	var17 = Enum.TextXAlignment.Left
	tbl_3.textXAlignment = var17
	var17 = Enum.TextYAlignment.Center
	tbl_3.textYAlignment = var17
	tbl_10.Description = React_upvr.createElement(StyledTextLabel_upvr, tbl_3)
	module.TextFrame = React_upvr.createElement("Frame", tbl_5, tbl_10)
	if var16 then
		local tbl_8 = {
			BackgroundTransparency = 1;
		}
		var17 = 48
		tbl_8.Size = UDim2.new(0, 110, 0, var17)
		tbl_8.AnchorPoint = Vector2.new(1, 0.5)
		tbl_8.LayoutOrder = 3
		local tbl = {}
		local tbl_6 = {}
		var17 = Enum.HorizontalAlignment.Right
		tbl_6.HorizontalAlignment = var17
		var17 = Enum.VerticalAlignment.Center
		tbl_6.VerticalAlignment = var17
		tbl.ButtonLayout = React_upvr.createElement("UIListLayout", tbl_6)
		local tbl_7 = {}
		if arg1.isUserInGreenFindFriendsButtonExperiment then
			var17 = ButtonType_upvr.PrimaryContextual
		else
			var17 = ButtonType_upvr.PrimarySystem
		end
		tbl_7.buttonType = var17
		tbl_7.standardSize = StandardButtonSize_upvr.XSmall
		tbl_7.fitContent = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7.text = useLocalization_upvr(tbl_9).findFriendsButton
		tbl_7.onActivated = arg1.openAmpUpsell
		tbl.FindFriendsButton = React_upvr.createElement(Button_upvr, tbl_7)
	else
	end
	module.ButtonFrame = nil
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 48);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end