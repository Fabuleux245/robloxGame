-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:21
-- Luau version 6, Types version 3
-- Time taken: 0.001951 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Logger_upvr = require(script.Parent.Logger)
local React_upvr = require(Parent.React)
local tbl_upvr = {
	conversationId = nil;
	participantId = nil;
	showRemoveUserButton = false;
	showViewProfileButton = true;
	viewProfileText = "localizedText.ViewProfile";
	reportUserText = "localizedText.ReportUser";
	removeFromGroupText = "localizedText.RemoveFromGroup";
	cancelText = "localizedText.Cancel";
	openViewProfile = function(arg1) -- Line 48, Named "openViewProfile"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("openViewProfile was not passed to ParticipantDialog")
	end;
	openReportUser = function(...) -- Line 51, Named "openReportUser"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("openReportUser was not passed to ParticipantDialog")
	end;
	openRemoveUserDialog = function(...) -- Line 54, Named "openRemoveUserDialog"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("openRemoveUserDialog was not passed to ParticipantDialog")
	end;
	onDismiss = function(arg1) -- Line 57, Named "onDismiss"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("onDismiss was not passed to ParticipantDialog")
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local ModalBottomSheet_upvr = require(Parent.UIBlox).ModalBottomSheet
function ParticipantDialog(arg1) -- Line 64
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: Logger_upvr (readonly)
		[5]: EventNames_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ModalBottomSheet_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local conversationId_upvr = any_join_result1_upvr.conversationId
	local participantId_upvr = any_join_result1_upvr.participantId
	local tbl_3 = {}
	if any_join_result1_upvr.showViewProfileButton then
		local tbl_4 = {
			text = any_join_result1_upvr.viewProfileText;
		}
		local function onActivated() -- Line 77
			--[[ Upvalues[3]:
				[1]: Logger_upvr (copied, readonly)
				[2]: participantId_upvr (readonly)
				[3]: any_join_result1_upvr (readonly)
			]]
			Logger_upvr:info("User activated viewProfile | userId: {}", participantId_upvr)
			any_join_result1_upvr.openViewProfile(participantId_upvr)
		end
		tbl_4.onActivated = onActivated
		table.insert(tbl_3, tbl_4)
	end
	local tbl = {
		text = any_join_result1_upvr.reportUserText;
	}
	local var7_result1_upvr = useAnalytics_upvr()
	local function onActivated() -- Line 86
		--[[ Upvalues[6]:
			[1]: Logger_upvr (copied, readonly)
			[2]: participantId_upvr (readonly)
			[3]: conversationId_upvr (readonly)
			[4]: var7_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: any_join_result1_upvr (readonly)
		]]
		Logger_upvr:info("User activated reportUser | userId: {}, conversationId: {}", participantId_upvr, conversationId_upvr)
		if var7_result1_upvr then
			var7_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsReportUserClicked, {
				conversationId = conversationId_upvr;
			})
		end
		any_join_result1_upvr.openReportUser(participantId_upvr, conversationId_upvr)
	end
	tbl.onActivated = onActivated
	table.insert(tbl_3, tbl)
	if any_join_result1_upvr.showRemoveUserButton then
		local tbl_2 = {
			text = any_join_result1_upvr.removeFromGroupText;
		}
		local function onActivated() -- Line 100
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (readonly)
				[2]: participantId_upvr (readonly)
				[3]: conversationId_upvr (readonly)
			]]
			any_join_result1_upvr.openRemoveUserDialog(participantId_upvr, conversationId_upvr)
		end
		tbl_2.onActivated = onActivated
		table.insert(tbl_3, tbl_2)
	end
	table.insert(tbl_3, {
		text = any_join_result1_upvr.cancelText;
		onActivated = function() -- Line 108, Named "onActivated"
		end;
	})
	return React_upvr.createElement(ModalBottomSheet_upvr, {
		bottomGap = 10;
		onDismiss = any_join_result1_upvr.onDismiss;
		buttonModels = tbl_3;
		screenWidth = 400;
		showImages = false;
	})
end
return React_upvr.memo(ParticipantDialog)