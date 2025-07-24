-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:11
-- Luau version 6, Types version 3
-- Time taken: 0.004565 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Logger_upvr = require(script.Parent.Logger)
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local tbl_upvr = {
	participants = {};
	localUserId = nil;
	conversation = nil;
	conversationId = nil;
	isGroupConversation = false;
	topBarHeight = 0;
	shouldShowCreateUnfilteredChat = false;
	shouldShowRevampedUI = false;
	shouldHideGroupChatFunctionality = false;
	shouldShowAddFriends = true;
	navigateBack = function() -- Line 80, Named "navigateBack"
	end;
	conversationTitle = "PlaceholderTitle";
	pageHeaderText = "localizedText.ChatDetails";
	generalText = "localizedText.General";
	membersText = "localizedText.Members";
	addFriendsText = "localizedText.AddFriends";
	leaveGroupText = "localizedText.LeaveGroup";
	onlinePresenceText = "localizedText.OnlineText";
	offlinePresenceText = "localizedText.OfflineText";
	conversationTypeHeaderText = "Expressive Chat Features";
	conversationTypeText = "localizedText.ConversationTypeText";
	createUnfilteredChatText = "Create new chat without filters";
	createUnfilteredChatSubTitleText = "All members of this conversation will be invited, but some are not eligible to join.";
	onGroupNameEntryCellActivated = function(arg1) -- Line 95, Named "onGroupNameEntryCellActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onGroupNameEntryCellActivated was not passed to ChatDetailsPage")
	end;
	onAddFriendsCellActivated = function(arg1) -- Line 98, Named "onAddFriendsCellActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onAddFriendsCellActivated was not passed to ChatDetailsPage")
	end;
	onLeaveGroupCellActivated = function(arg1) -- Line 101, Named "onLeaveGroupCellActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onLeaveGroupCellActivated was not passed to ChatDetailsPage")
	end;
	onParticipantCellActivated = function(arg1) -- Line 104, Named "onParticipantCellActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onParticipantCellActivated was not passed to ChatDetailsPage")
	end;
	onConversationTypeIconActivated = function(arg1) -- Line 107, Named "onConversationTypeIconActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onConversationTypeIconActivated was not passed to ChatDetailsPage")
	end;
	onCreateUnfilteredChatCellActivated = function(arg1) -- Line 110, Named "onCreateUnfilteredChatCellActivated"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onCreateUnfilteredChatCellActivated was not passed to ChatDetailsPage")
	end;
	LayoutOrder = 0;
	style = Cryo_upvr.Dictionary.join(require(AppChat.SocialLibraries).Components.TestStyle, {
		Tokens = {
			Global = {
				Color = {
					None = {};
				};
			};
		};
	});
}
local FFlagFixConversationListLargeText_upvr = require(AppChat.Flags.FFlagFixConversationListLargeText)
local useTextSizeOffset_upvr = require(Parent.UIBlox).Core.Style.useTextSizeOffset
local useIsAppChatVerticallyConstrained_upvr = require(AppChat.App.Hooks.useIsAppChatVerticallyConstrained)
local useCallback_upvr = React_upvr.useCallback
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useIsChatUserMessagesEnabled_upvr = require(AppChat.Hooks.useIsChatUserMessagesEnabled)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatDetailsPageAutomaticCanvasSize", false)
local SectionHeader_upvr = require(script.Parent.SectionHeader)
local GroupNameEntryCell_upvr = require(script.Parent.GroupNameEntryCell)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
local AddFriendsEntry_upvr = require(script.Parent.AddFriendsEntry)
local ParticipantList_upvr = require(script.Parent.ParticipantList)
local LeaveGroupCell_upvr = require(script.Parent.LeaveGroupCell)
local ConversationTypeCell_upvr = require(script.Parent.UnfilteredThreads.ConversationTypeCell)
local CreateUnfilteredChatCell_upvr = require(script.Parent.UnfilteredThreads.CreateUnfilteredChatCell)
function ChatDetailsPage(arg1) -- Line 128
	--[[ Upvalues[19]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: FFlagFixConversationListLargeText_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: useIsAppChatVerticallyConstrained_upvr (readonly)
		[6]: Logger_upvr (readonly)
		[7]: useCallback_upvr (readonly)
		[8]: dependencyArray_upvr (readonly)
		[9]: useIsChatUserMessagesEnabled_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: SectionHeader_upvr (readonly)
		[13]: GroupNameEntryCell_upvr (readonly)
		[14]: Images_upvr (readonly)
		[15]: AddFriendsEntry_upvr (readonly)
		[16]: ParticipantList_upvr (readonly)
		[17]: LeaveGroupCell_upvr (readonly)
		[18]: ConversationTypeCell_upvr (readonly)
		[19]: CreateUnfilteredChatCell_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 98 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local style = any_join_result1_upvr.style
	local var32
	if FFlagFixConversationListLargeText_upvr then
		var32 = useTextSizeOffset_upvr()
	else
		var32 = nil
	end
	if FFlagFixConversationListLargeText_upvr then
		-- KONSTANTWARNING: GOTO [24] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 98 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 21. Error Block 110 start (CF ANALYSIS FAILED)
	local tbl = {
		ChatGroupHeader = {
			marginTop = style.Tokens.Global.Size_0;
			marginBottom = style.Tokens.Global.Size_0;
		};
		MembersHeader = {
			marginTop = style.Tokens.Global.Size_0;
			marginBottom = style.Tokens.Global.Size_0;
		};
		GroupNameEntryCell = {
			paddingBottom = style.Tokens.Global.Size_0;
		};
	}
	local function _() -- Line 151
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onGroupNameEntryCellActivated(any_join_result1_upvr.conversation)
	end
	local function _() -- Line 155
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onAddFriendsCellActivated(any_join_result1_upvr.conversation)
	end
	local function _() -- Line 159
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onLeaveGroupCellActivated(any_join_result1_upvr.conversation)
	end
	local function _(arg1_2) -- Line 163
		--[[ Upvalues[2]:
			[1]: Logger_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		Logger_upvr:info("onParticipantCellActivated: {}", arg1_2.id)
		if arg1_2.isLocalUser then
		else
			any_join_result1_upvr.onParticipantCellActivated(arg1_2.id)
		end
	end
	local function _() -- Line 172
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		any_join_result1_upvr.onCreateUnfilteredChatCellActivated(any_join_result1_upvr.conversation)
	end
	local function _(arg1_3, arg2, arg3) -- Line 177
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if not any_join_result1_upvr.wideMode and arg2 == Enum.SwipeDirection.Right and arg3 == 1 then
			any_join_result1_upvr.navigateBack()
		end
	end
	for _, _ in pairs(any_join_result1_upvr.participants) do
		local var46
	end
	if any_join_result1_upvr.shouldShowAddFriends then
		-- KONSTANTWARNING: GOTO [118] #87
	end
	-- KONSTANTERROR: [23] 21. Error Block 110 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(ChatDetailsPage)