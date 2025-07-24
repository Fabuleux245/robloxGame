-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:21
-- Luau version 6, Types version 3
-- Time taken: 0.007821 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Components = FriendsMenu.Components
local Parent = FriendsMenu.Parent
local React_upvr = require(Parent.React)
local FriendsListContext_upvr = require(FriendsMenu.Context.FriendsListContext)
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local FFlagLuaAppGameInviteFocusable_upvr = require(Parent.SharedFlags).FFlagLuaAppGameInviteFocusable
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableFriendsMenuShareGameInviteLink3", false)
local FriendRow_upvr = require(Components.FriendRow)
local FriendsMenuShareGameInviteLink_upvr = require(Components.FriendsMenuShareGameInviteLink)
local FriendsListMsg_upvr = require(Components.FriendsListMsg)
local EmptyFriendsList_upvr = require(Components.EmptyFriendsList)
local VerticalScrollView_upvr = require(Parent.UIBlox).App.Container.VerticalScrollView
local FFlagUpdateInvitesToUsePaginatedFriends_upvr = require(FriendsMenu.Flags.FFlagUpdateInvitesToUsePaginatedFriends)
return function(arg1) -- Line 42
	--[[ Upvalues[13]:
		[1]: React_upvr (readonly)
		[2]: FriendsListContext_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: FFlagLuaAppGameInviteFocusable_upvr (readonly)
		[6]: useAppPolicy_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: FriendRow_upvr (readonly)
		[9]: FriendsMenuShareGameInviteLink_upvr (readonly)
		[10]: FriendsListMsg_upvr (readonly)
		[11]: EmptyFriendsList_upvr (readonly)
		[12]: VerticalScrollView_upvr (readonly)
		[13]: FFlagUpdateInvitesToUsePaginatedFriends_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_useContext_result1_2 = React_upvr.useContext(FriendsListContext_upvr)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 4 start (CF ANALYSIS FAILED)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local _, _ = React_upvr.useState(0)
	React_upvr.useEffect(function() -- Line 53
		--[[ Upvalues[5]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: FFlagLuaAppGameInviteFocusable_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		if not UserInputService_upvr.GamepadEnabled then return end
		local current = any_useRef_result1_upvr.current
		local var71_upvw
		if current then
			var71_upvw = current:FindFirstAncestorOfClass("ScreenGui")
			if var71_upvw and var71_upvw.Enabled and GuiService_upvr.SelectedCoreObject == nil then
				if not FFlagLuaAppGameInviteFocusable_upvr or not arg1.disableSelectionParentManagement then
					GuiService_upvr:AddSelectionParent(arg1.parentComponentName, current)
				end
				for _, v in ipairs(current:GetChildren()) do
					if v:IsA("ImageButton") and v.LayoutOrder == 1 then
						GuiService_upvr.SelectedCoreObject = v
					end
				end
			end
		end
		return function() -- Line 75
			--[[ Upvalues[4]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: var71_upvw (read and write)
				[3]: FFlagLuaAppGameInviteFocusable_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
			]]
			if GuiService_upvr.SelectedCoreObject and var71_upvw and (GuiService_upvr.SelectedCoreObject.Parent == nil or var71_upvw:IsAncestorOf(GuiService_upvr.SelectedCoreObject)) then
				GuiService_upvr.SelectedCoreObject = nil
			end
			if not FFlagLuaAppGameInviteFocusable_upvr or not arg1.disableSelectionParentManagement then
				GuiService_upvr:RemoveSelectionGroup(arg1.parentComponentName)
			end
		end
	end, {any_useRef_result1_upvr.current, any_useContext_result1_2.friends})
	local function _(arg1_3) -- Line 95
		return arg1_3.getExperienceInviteShareLinkEnabled()
	end
	-- KONSTANTERROR: [18] 13. Error Block 4 end (CF ANALYSIS FAILED)
end