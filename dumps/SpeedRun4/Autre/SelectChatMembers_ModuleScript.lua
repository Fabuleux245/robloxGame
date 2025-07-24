-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:13
-- Luau version 6, Types version 3
-- Time taken: 0.002200 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local UIBlox = require(Parent.UIBlox)
local UserProfiles_upvr = require(Parent.UserProfiles)
local FFlagFixConversationListLargeText_upvr = require(AppChat.Flags.FFlagFixConversationListLargeText)
local UserCellWithCheckbox_upvr = require(script.Parent.UserCellWithCheckbox)
local isUserInList_upvr = require(script.Parent.Utils.isUserInList)
local Text_upvr = Foundation.Text
local function renderUserEntry_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 47, Named "renderUserEntry"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: FFlagFixConversationListLargeText_upvr (readonly)
		[4]: UserCellWithCheckbox_upvr (readonly)
		[5]: isUserInList_upvr (readonly)
		[6]: Text_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if arg2 then
		if not arg1.username or not '@'..arg1.username then
			-- KONSTANTWARNING: GOTO [13] #11
		end
	else
	end
	if arg2 then
	else
	end
	local module_2 = {
		key = arg1.id;
	}
	if FFlagFixConversationListLargeText_upvr then
		-- KONSTANTWARNING: GOTO [39] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 29. Error Block 37 start (CF ANALYSIS FAILED)
	module_2.tag = "size-full-1200"
	if FFlagFixConversationListLargeText_upvr then
	else
	end
	module_2.Size = nil
	local module = {}
	local tbl_2 = {}
	tbl_2.style = arg4
	tbl_2.user = arg1
	tbl_2.secondaryTitleText = arg1.alias
	tbl_2.subTitleText = arg1.presenceText
	tbl_2.isCheckboxActivated = isUserInList_upvr(arg3.selectedUsers, arg1.id)
	tbl_2.onActivated = arg3.onEntryActivated
	module.cellContent = React_upvr.createElement(UserCellWithCheckbox_upvr, tbl_2)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl.Text = arg1.id
		tbl.tag = "auto-xy position-bottom-right anchor-bottom-right"
		local tbl = {}
		return React_upvr.createElement(Text_upvr, tbl)
	end
	if not arg3.isDebugEnabled or not INLINED() then
	end
	module.debugId = nil
	do
		return React_upvr.createElement(View_upvr, module_2, module)
	end
	-- KONSTANTERROR: [38] 29. Error Block 37 end (CF ANALYSIS FAILED)
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local useDebouncedUserSearch_upvr = require(script.Parent.Utils.useDebouncedUserSearch)
local useUserProfilesFetch_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local SelectedMembersBar_upvr = require(script.Parent.SelectedMembersBar)
local TextInput_upvr = Foundation.TextInput
local PaginatedChatMembers_upvr = require(script.Parent.PaginatedChatMembers)
return React_upvr.memo(function(arg1) -- Line 80, Named "SelectChatMembers"
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: FFlagFixConversationListLargeText_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: useDebouncedUserSearch_upvr (readonly)
		[6]: useUserProfilesFetch_upvr (readonly)
		[7]: UserProfiles_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: UserModel_upvr (readonly)
		[10]: renderUserEntry_upvr (readonly)
		[11]: View_upvr (readonly)
		[12]: SelectedMembersBar_upvr (readonly)
		[13]: TextInput_upvr (readonly)
		[14]: PaginatedChatMembers_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local _ = {
		suggested = "Feature.Friends.Label.Suggested";
	}
	if FFlagFixConversationListLargeText_upvr then
	else
	end
	local var19_result1, useDebouncedUserSearch_upvr_result2, var19_result3 = useDebouncedUserSearch_upvr(arg1.conversation)
	if var19_result3 == "" then
		-- KONSTANTWARNING: GOTO [22] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 19. Error Block 56 start (CF ANALYSIS FAILED)
	if #var19_result1 ~= 0 then
		-- KONSTANTWARNING: GOTO [27] #24
	end
	-- KONSTANTERROR: [21] 19. Error Block 56 end (CF ANALYSIS FAILED)
end)