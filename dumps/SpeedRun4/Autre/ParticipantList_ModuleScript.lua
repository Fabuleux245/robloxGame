-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:24
-- Luau version 6, Types version 3
-- Time taken: 0.003617 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SocialLibraries = require(AppChat.SocialLibraries)
local React_upvr = require(Parent.React)
local tbl_4_upvr = {
	entries = {};
	entryHeight = 64;
}
local Logger_upvr = require(script.Parent.Logger)
function tbl_4_upvr.onEntryActivated(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:warning("onEntryActivated was not passed to ParticipantList")
end
tbl_4_upvr.pendingKey = "Feature.Chat.Label.Pending"
tbl_4_upvr.sortComparator = SocialLibraries.Utils.presenceSortComparator
tbl_4_upvr.LayoutOrder = 0
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useState_upvr = React_upvr.useState
local UserCell_upvr = require(AppChat.Components.Cells.UserCell)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ParticipantEntryRightFrame_upvr = require(script.Parent.ParticipantEntryRightFrame)
local SortedList_upvr = SocialLibraries.Components.SortedList
function ParticipantList(arg1) -- Line 48
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: UserCell_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: ParticipantEntryRightFrame_upvr (readonly)
		[9]: SortedList_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_4_upvr, arg1)
	local useState_upvr_result1_upvr, useState_upvr_result2_upvr = useState_upvr(any_join_result1_upvr.childWidth)
	local var8_result1_upvr = useStyle_upvr()
	local tbl = {}
	for _, v in pairs(any_join_result1_upvr.entries) do
		local tbl_5 = {}
		local var31 = not v.isLocalUser
		local metadata = v.metadata
		if metadata then
			metadata = v.metadata.isPending
			local var33
		end
		if var31 or metadata then
			local tbl_3 = {}
			local tbl_2 = {}
			if metadata then
				var33 = useLocalization_upvr({
					pendingLabelText = any_join_result1_upvr.pendingKey;
				}).pendingLabelText
			else
				var33 = nil
			end
			tbl_2.labelText = var33
			tbl_2.shouldShowDots = var31
			var33 = React_upvr.Change.AbsoluteSize
			tbl_2[var33] = function(arg1_3) -- Line 92
				--[[ Upvalues[1]:
					[1]: useState_upvr_result2_upvr (readonly)
				]]
				useState_upvr_result2_upvr(function(arg1_4) -- Line 93
					--[[ Upvalues[1]:
						[1]: arg1_3 (readonly)
					]]
					return math.max(arg1_4, arg1_3.AbsoluteSize.X)
				end)
			end
			tbl_3.rightFrame = React_upvr.createElement(ParticipantEntryRightFrame_upvr, tbl_2)
			tbl_5.children = tbl_3
		end
		table.insert(tbl, Cryo_upvr.Dictionary.join(tbl_5, v))
	end
	return React_upvr.createElement(SortedList_upvr, {
		entries = tbl;
		entryHeight = any_join_result1_upvr.entryHeight;
		renderEntry = function(arg1_2, arg2) -- Line 53
			--[[ Upvalues[5]:
				[1]: any_join_result1_upvr (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: UserCell_upvr (copied, readonly)
				[4]: var8_result1_upvr (readonly)
				[5]: useState_upvr_result1_upvr (readonly)
			]]
			local var23
			if arg1_2.presenceText == "Common.Presence.Label.Online" then
				var23 = any_join_result1_upvr.onlinePresenceText
			elseif arg1_2.presenceText == "Common.Presence.Label.Offline" then
				var23 = any_join_result1_upvr.offlinePresenceText
			else
				var23 = arg1_2.presenceText
			end
			local module = {
				boldTitle = true;
				showDivider = not arg2;
				subTitleText = var23;
				style = var8_result1_upvr;
			}
			module.user = arg1_2
			module.childWidth = useState_upvr_result1_upvr
			function module.onActivated() -- Line 71
				--[[ Upvalues[2]:
					[1]: any_join_result1_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				any_join_result1_upvr.onEntryActivated(arg1_2)
			end
			return React_upvr.createElement(UserCell_upvr, module, arg1_2.children)
		end;
		sortComparator = any_join_result1_upvr.sortComparator;
		LayoutOrder = any_join_result1_upvr.LayoutOrder;
	})
end
return React_upvr.memo(ParticipantList)