-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:47
-- Luau version 6, Types version 3
-- Time taken: 0.002456 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local tbl_4_upvr = {}
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local Logger_upvr = require(script.Parent.Logger)
local useCallback_upvr = React_upvr.useCallback
local EnumScreens_upvr = require(AppChat.EnumScreens)
local CreateUnfilteredChatPartialModalContainer_upvr = require(script.Parent.CreateUnfilteredChatPartialModalContainer)
return function(arg1) -- Line 19, Named "CreateUnfilteredChatPartialModalScreen"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: useEffectOnMount_upvr (readonly)
		[4]: Logger_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: EnumScreens_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: CreateUnfilteredChatPartialModalContainer_upvr (readonly)
	]]
	local any_union_result1_upvr_2 = Cryo_upvr.Dictionary.union(tbl_4_upvr, arg1)
	local navigation_upvr = any_union_result1_upvr_2.navigation
	local var30
	if type(navigation_upvr) == "nil" then
		var30 = false
	else
		var30 = true
	end
	assert(var30, "CreateUnfilteredChatPartialModalScreen should be wrapped with React Navigation")
	local var31 = navigation_upvr
	if var31 then
		var31 = navigation_upvr.getParam
		if var31 then
			var31 = navigation_upvr.getParam
			var30 = "conversationId"
			var31 = var31(var30, nil)
		end
	end
	var30 = useEffectOnMount_upvr
	var30(function() -- Line 25
		--[[ Upvalues[1]:
			[1]: Logger_upvr (copied, readonly)
		]]
		Logger_upvr:info("LearnMorePartialModalScreen mounted")
	end)
	var30 = useCallback_upvr
	var30 = var30(function() -- Line 29
		--[[ Upvalues[1]:
			[1]: navigation_upvr (readonly)
		]]
		navigation_upvr.goBack()
	end, {navigation_upvr})
	if var31 == nil then
		Logger_upvr:warning("ConversationId is required to open CreateUnfilteredChatPartialModalScreen")
		return nil
	end
	return React_upvr.createElement(CreateUnfilteredChatPartialModalContainer_upvr, {
		conversationId = var31;
		onDismissed = var30;
		navigateToConversation = useCallback_upvr(function(arg1_4) -- Line 33
			--[[ Upvalues[2]:
				[1]: navigation_upvr (readonly)
				[2]: EnumScreens_upvr (copied, readonly)
			]]
			local tbl_2 = {}
			tbl_2.conversationId = arg1_4
			navigation_upvr.navigate(EnumScreens_upvr.ChatConversation, tbl_2)
		end, {navigation_upvr});
		navigateToToast = useCallback_upvr(function(arg1_5) -- Line 37
			--[[ Upvalues[2]:
				[1]: any_union_result1_upvr_2 (readonly)
				[2]: EnumScreens_upvr (copied, readonly)
			]]
			local tbl_7 = {}
			local tbl_6 = {}
			local tbl_5 = {}
			tbl_5.toastTitle = arg1_5
			tbl_6.toastContent = tbl_5
			tbl_7.toastProps = tbl_6
			any_union_result1_upvr_2.navigation.navigate(EnumScreens_upvr.RoactChatToast, tbl_7)
		end, {navigation_upvr});
	})
end