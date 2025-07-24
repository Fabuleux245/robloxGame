-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:44
-- Luau version 6, Types version 3
-- Time taken: 0.002076 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local Images_upvr = UIBlox.App.ImageSet.Images
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local React_upvr = require(Parent.React)
local LuaAppNavigationContext_upvr = require(AppChat.LuaAppNavigationContext)
local getBoldTextTheme_upvr = require(script.Parent.Utils.getBoldTextTheme)
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local getFFlagCommunitiesUseVisualConfigUtil_upvr = require(Parent.SharedFlags).getFFlagCommunitiesUseVisualConfigUtil
local getAppChatCommunitiesVisualConfig_upvr = require(AppChat.Utils.getAppChatCommunitiesVisualConfig)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagUseCommunitiesTranslation_upvr = require(Parent.SharedFlags).GetFFlagUseCommunitiesTranslation
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local FFlagAppChatMakeGroupsComponentMoreGeneric_upvr = require(AppChat.Flags.FFlagAppChatMakeGroupsComponentMoreGeneric)
local FFlagFixConversationListLargeText_upvr = require(AppChat.Flags.FFlagFixConversationListLargeText)
local IconSize_upvr = UIBlox.App.Constant.IconSize
local ChatLandingTelemetryEvents_upvr = require(script:FindFirstAncestor("ChatLanding").ChatLandingTelemetryEvents)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_menu_groups_upvr = Images_upvr["icons/menu/groups"]
local icons_navigation_pushRight_upvr = Images_upvr["icons/navigation/pushRight"]
function CustomConversationListEntry(arg1) -- Line 43
	--[[ Upvalues[21]:
		[1]: useStyle_upvr (readonly)
		[2]: useTelemetry_upvr (readonly)
		[3]: ChatLandingTelemetryLayer_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: LuaAppNavigationContext_upvr (readonly)
		[6]: getBoldTextTheme_upvr (readonly)
		[7]: useTextSizeOffset_upvr (readonly)
		[8]: getFFlagCommunitiesUseVisualConfigUtil_upvr (readonly)
		[9]: getAppChatCommunitiesVisualConfig_upvr (readonly)
		[10]: useLocalization_upvr (readonly)
		[11]: GetFFlagUseCommunitiesTranslation_upvr (readonly)
		[12]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[13]: useChatPagePadding_upvr (readonly)
		[14]: FFlagAppChatMakeGroupsComponentMoreGeneric_upvr (readonly)
		[15]: FFlagFixConversationListLargeText_upvr (readonly)
		[16]: IconSize_upvr (readonly)
		[17]: ChatLandingTelemetryEvents_upvr (readonly)
		[18]: ImageSetLabel_upvr (readonly)
		[19]: Images_upvr (readonly)
		[20]: icons_menu_groups_upvr (readonly)
		[21]: icons_navigation_pushRight_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 96 start (CF ANALYSIS FAILED)
	local var25
	if getFFlagCommunitiesUseVisualConfigUtil_upvr() then
		var25 = getAppChatCommunitiesVisualConfig_upvr()
	else
		var25 = nil
	end
	if getFFlagCommunitiesUseVisualConfigUtil_upvr() then
		-- KONSTANTWARNING: GOTO [38] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 96 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 30. Error Block 75 start (CF ANALYSIS FAILED)
	if GetFFlagUseCommunitiesTranslation_upvr() then
		-- KONSTANTWARNING: GOTO [38] #36
	end
	-- KONSTANTERROR: [32] 30. Error Block 75 end (CF ANALYSIS FAILED)
end
return CustomConversationListEntry