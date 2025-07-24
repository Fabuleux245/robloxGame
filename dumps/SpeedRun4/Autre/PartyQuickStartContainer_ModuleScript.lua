-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:47
-- Luau version 6, Types version 3
-- Time taken: 0.001484 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = AppChat.EnumScreens
local var4_upvr
if 0 < var4_upvr then
	var4_upvr = game.PlaceId
	EnumScreens_upvr = tostring(var4_upvr)
else
	EnumScreens_upvr = nil
end
if 0 < game.GameId then
	var4_upvr = tostring(game.GameId)
else
	var4_upvr = nil
end
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext).useChatPlacementContext
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local HttpService_upvr = game:GetService("HttpService")
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local EnumScreens_upvr_2_upvr = require(EnumScreens_upvr)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local CustomConversationListEntry_upvr = require(script.Parent.CustomConversationListEntry)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
function PartyQuickStartContainer(arg1) -- Line 29
	--[[ Upvalues[13]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useChatPlacementContext_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: EnumScreens_upvr (readonly)
		[9]: var4_upvr (readonly)
		[10]: EnumScreens_upvr_2_upvr (readonly)
		[11]: dependencyArray_upvr (readonly)
		[12]: CustomConversationListEntry_upvr (readonly)
		[13]: Images_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useChatPlacementContext_upvr_result1_upvr = useChatPlacementContext_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		titleText = "Feature.Squads.Label.StartParty";
		subTitleText = "Feature.Squads.Label.JoinExperiencesTogether";
	})
	return React_upvr.createElement(CustomConversationListEntry_upvr, {
		entryHeight = arg1.entryHeight;
		entryIcon = Images_upvr["icons/actions/friends/friendsplaying"];
		onActivated = React_upvr.useCallback(function() -- Line 38
			--[[ Upvalues[8]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: useAnalytics_upvr_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: useChatPlacementContext_upvr_result1_upvr (readonly)
				[5]: EnumScreens_upvr (copied, readonly)
				[6]: var4_upvr (copied, readonly)
				[7]: useNavigation_upvr_result1_upvr (readonly)
				[8]: EnumScreens_upvr_2_upvr (copied, readonly)
			]]
			local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatLandingPartyQuickStartButtonClicked, {
				clickLocation = useChatPlacementContext_upvr_result1_upvr.chatPlacement;
				partyAttemptId = any_GenerateGUID_result1;
				placeId = EnumScreens_upvr;
				universeId = var4_upvr;
			})
			useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr_2_upvr.QuickStartSquadInviteFriends, {
				partyAttemptId = any_GenerateGUID_result1;
			})
		end, dependencyArray_upvr(useAnalytics_upvr_result1_upvr, useNavigation_upvr_result1_upvr, useChatPlacementContext_upvr_result1_upvr.chatPlacement));
		titleText = useLocalization_upvr_result1.titleText;
		subTitleText = useLocalization_upvr_result1.subTitleText;
	})
end
return PartyQuickStartContainer