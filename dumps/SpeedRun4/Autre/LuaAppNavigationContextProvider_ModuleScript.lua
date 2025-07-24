-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:40
-- Luau version 6, Types version 3
-- Time taken: 0.003061 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(script.Parent.EnumScreens)
local OpenUnfilteredThreadsLearnMoreLink_upvr = require(AppChat.Conversations.Thunks.OpenUnfilteredThreadsLearnMoreLink)
local ChatPlacementContext = require(AppChat.Contexts.ChatPlacementContext)
local FFlagPartialModalConversationFix_upvr = require(AppChat.Flags.FFlagPartialModalConversationFix)
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
function generateNavigateToGroups(arg1, arg2) -- Line 25
	--[[ Upvalues[2]:
		[1]: EnumScreens_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	return function() -- Line 26
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
		]]
		if arg2 then
			arg2()
		end
		if arg1 == nil then
		else
			local var9 = arg1[EnumScreens_upvr.Groups]
			if var9 then
				any_new_result1_upvr:info("Navigate To Groups from App Chat")
				var9()
				return
			end
			any_new_result1_upvr:warning("Groups page was not set in navigateToLuaAppPages")
		end
	end
end
local function _(arg1, arg2) -- Line 45, Named "generateNavigateToUnfilteredThreadsLearnMore"
	--[[ Upvalues[3]:
		[1]: FFlagPartialModalConversationFix_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: OpenUnfilteredThreadsLearnMoreLink_upvr (readonly)
	]]
	return function(arg1_2) -- Line 46
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: OpenUnfilteredThreadsLearnMoreLink_upvr (copied, readonly)
		]]
		if not arg1 then
		else
			if arg2 then
				if arg1_2 then
					if FFlagPartialModalConversationFix_upvr then
						arg1_2(EnumScreens_upvr.LearnMorePartialModal, {}, true)
						return
					end
					arg1_2(EnumScreens_upvr.LearnMorePartialModal)
				end
				return
			end
			arg1(OpenUnfilteredThreadsLearnMoreLink_upvr())
		end
	end
end
local React_upvr = require(Parent.React)
local useChatPlacementContext_upvr = ChatPlacementContext.useChatPlacementContext
local isPlacementInExperience_upvr = ChatPlacementContext.isPlacementInExperience
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local LuaAppNavigationContext_upvr = require(script.Parent.LuaAppNavigationContext)
function LuaAppNavigationContextProvider(arg1) -- Line 64
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: useChatPlacementContext_upvr (readonly)
		[3]: isPlacementInExperience_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: EventNames_upvr (readonly)
		[6]: LuaAppNavigationContext_upvr (readonly)
		[7]: FFlagPartialModalConversationFix_upvr (readonly)
		[8]: EnumScreens_upvr (readonly)
		[9]: OpenUnfilteredThreadsLearnMoreLink_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(function() -- Line 65
	end)
	local var14_result1_upvr = useAnalytics_upvr()
	if var14_result1_upvr then
		function any_useRef_result1.current() -- Line 72
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
			]]
			var14_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatLandingGroupsBtnClicked)
		end
	end
	local module = {}
	local tbl = {
		navigateToGroups = generateNavigateToGroups(arg1.navigateToLuaAppPages, any_useRef_result1.current);
	}
	local dispatch_upvr = arg1.dispatch
	local isPlacementInExperience_upvr_result1_upvr = isPlacementInExperience_upvr(useChatPlacementContext_upvr().chatPlacement)
	function tbl.navigateToUnfilteredThreadsLearnMore(arg1_3) -- Line 46
		--[[ Upvalues[5]:
			[1]: dispatch_upvr (readonly)
			[2]: isPlacementInExperience_upvr_result1_upvr (readonly)
			[3]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: OpenUnfilteredThreadsLearnMoreLink_upvr (copied, readonly)
		]]
		if not dispatch_upvr then
		else
			if isPlacementInExperience_upvr_result1_upvr then
				if arg1_3 then
					if FFlagPartialModalConversationFix_upvr then
						arg1_3(EnumScreens_upvr.LearnMorePartialModal, {}, true)
						return
					end
					arg1_3(EnumScreens_upvr.LearnMorePartialModal)
				end
				return
			end
			dispatch_upvr(OpenUnfilteredThreadsLearnMoreLink_upvr())
		end
	end
	module.value = tbl
	return React_upvr.createElement(LuaAppNavigationContext_upvr.Provider, module, arg1.children)
end
return LuaAppNavigationContextProvider