-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:19
-- Luau version 6, Types version 3
-- Time taken: 0.003065 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local UIBlox = require(FriendsLanding.AddFriends.dependencies).UIBlox
local Images = UIBlox.App.ImageSet.Images
local tbl_upvr = {
	itemMargin = 12;
	getItemMetrics = UIBlox.App.Grid.GridMetrics.getMediumMetrics;
	layoutOrder = 1;
	handleIgnoreAllFriendsRequests = function() -- Line 31
	end;
}
local React_upvr = require(FriendsLanding.Parent.React)
local TOP_BAR_HEIGHT_upvw = require(FriendsLanding.Common.Constants).TOP_BAR_HEIGHT
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local icons_menu_more_on_upvr = Images["icons/menu/more_on"]
local icons_menu_more_off_upvr = Images["icons/menu/more_off"]
local AddFriendsSectionHeaderFrame_upvr = require(script.Parent.AddFriendsSectionHeaderFrame)
local AddFriendsGridView_upvr = require(script.Parent.AddFriendsGridView)
local AddFriendsEmptyState_upvr = require(script.Parent.AddFriendsEmptyState)
local IgnoreAllFriendsRequestsMenu_upvr = require(script.Parent.IgnoreAllFriendsRequestsMenu)
return function(arg1) -- Line 64, Named "AddFriendsContentFrame"
	--[[ Upvalues[12]:
		[1]: tbl_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: TOP_BAR_HEIGHT_upvw (read and write)
		[4]: useStyle_upvr (readonly)
		[5]: useSelectionCursor_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
		[7]: icons_menu_more_on_upvr (readonly)
		[8]: icons_menu_more_off_upvr (readonly)
		[9]: AddFriendsSectionHeaderFrame_upvr (readonly)
		[10]: AddFriendsGridView_upvr (readonly)
		[11]: AddFriendsEmptyState_upvr (readonly)
		[12]: IgnoreAllFriendsRequestsMenu_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	local var17_upvr
	if arg1.itemMargin then
	else
	end
	if arg1.getItemMetrics then
	else
	end
	var17_upvr = arg1.layoutOrder
	if var17_upvr then
	else
		var17_upvr = tbl_upvr
	end
	if arg1.handleIgnoreAllFriendsRequests then
		var17_upvr = arg1.handleIgnoreAllFriendsRequests
	else
		var17_upvr = tbl_upvr.handleIgnoreAllFriendsRequests
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local function _() -- Line 74
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(function(arg1_2) -- Line 75
			return not arg1_2
		end)
	end
	local function _() -- Line 80
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var17_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
		var17_upvr()
	end
	local _ = {var17_upvr}
	if arg1.showNewAddFriendsPageVariant then
		TOP_BAR_HEIGHT_upvw = -155
	end
	if arg1.showNewAddFriendsPageVariant then
		if arg1.headerFrame then
			if 0 >= #arg1.friends then
			else
			end
			-- KONSTANTWARNING: GOTO [87] #63
		end
		-- KONSTANTWARNING: GOTO [87] #63
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [81] 59. Error Block 57 start (CF ANALYSIS FAILED)
	if arg1.headerFrame == nil then
		-- KONSTANTWARNING: GOTO [87] #63
	end
	-- KONSTANTERROR: [81] 59. Error Block 57 end (CF ANALYSIS FAILED)
end