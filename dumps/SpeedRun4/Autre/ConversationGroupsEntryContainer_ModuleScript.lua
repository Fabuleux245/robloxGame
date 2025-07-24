-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:41
-- Luau version 6, Types version 3
-- Time taken: 0.001044 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
local getFFlagCommunitiesUseVisualConfigUtil_upvr = require(Parent.SharedFlags).getFFlagCommunitiesUseVisualConfigUtil
local getAppChatCommunitiesVisualConfig_upvr = require(AppChat.Utils.getAppChatCommunitiesVisualConfig)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagUseCommunitiesTranslation_upvr = require(Parent.SharedFlags).GetFFlagUseCommunitiesTranslation
local React_upvr = require(Parent.React)
local LuaAppNavigationContext_upvr = require(AppChat.LuaAppNavigationContext)
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local icons_menu_groups_upvr = Images_upvr["icons/menu/groups"]
local CustomConversationListEntry_upvr = require(script.Parent.CustomConversationListEntry)
local ChatLandingTelemetryEvents_upvr = require(script:FindFirstAncestor("ChatLanding").ChatLandingTelemetryEvents)
function ConversationGroupsEntryContainer(arg1) -- Line 27
	--[[ Upvalues[12]:
		[1]: getFFlagCommunitiesUseVisualConfigUtil_upvr (readonly)
		[2]: getAppChatCommunitiesVisualConfig_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: GetFFlagUseCommunitiesTranslation_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: LuaAppNavigationContext_upvr (readonly)
		[7]: useTelemetry_upvr (readonly)
		[8]: ChatLandingTelemetryLayer_upvr (readonly)
		[9]: Images_upvr (readonly)
		[10]: icons_menu_groups_upvr (readonly)
		[11]: CustomConversationListEntry_upvr (readonly)
		[12]: ChatLandingTelemetryEvents_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var15
	if getFFlagCommunitiesUseVisualConfigUtil_upvr() then
		var15 = getAppChatCommunitiesVisualConfig_upvr()
	else
		var15 = nil
	end
	if getFFlagCommunitiesUseVisualConfigUtil_upvr() then
		-- KONSTANTWARNING: GOTO [21] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 15. Error Block 21 start (CF ANALYSIS FAILED)
	if GetFFlagUseCommunitiesTranslation_upvr() then
		-- KONSTANTWARNING: GOTO [21] #21
	end
	-- KONSTANTERROR: [15] 15. Error Block 21 end (CF ANALYSIS FAILED)
end
return ConversationGroupsEntryContainer