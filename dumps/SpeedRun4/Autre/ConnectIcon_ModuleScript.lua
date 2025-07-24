-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:35
-- Luau version 6, Types version 3
-- Time taken: 0.004994 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local var5_upvw = "icons/menu/platformChatOff"
local var6_upvw = "icons/menu/platformChatOn"
if game:DefineFastFlag("ConnectIconUsesAppChatConfig", false) then
	local any_getAppChatNavbarItemConfig_result1 = AppChat.Utils.getAppChatNavbarItemConfig()
	var5_upvw = any_getAppChatNavbarItemConfig_result1.icon.off
	var6_upvw = any_getAppChatNavbarItemConfig_result1.icon.on
end
local tbl_upvr = {
	integrationId = "";
	shouldShowCustomBadge = true;
	isSquadIndicatorEnabled = false;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = require(CorePackages.Packages.React)
local InExperienceAppChatModal_upvr = AppChat.App.InExperienceAppChatModal
local dependencyArray_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray
local MappedSignal_upvr = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal
local FFlagEnableUnibarFtuxTooltips_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUnibarFtuxTooltips
local InExperienceAppChatExperimentation_upvr = AppChat.App.InExperienceAppChatExperimentation
local CommonFtuxTooltip_upvr = require(Chrome.Integrations.CommonFtuxTooltip)
local var18_upvr = require(Chrome.Flags.FFlagEnableUnibarTooltipQueue)()
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UnibarConnectIconTooltipPriority", 1500)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation
local GetFStringConnectTooltipLocalStorageKey_upvr = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local GetFIntRobloxConnectFtuxShowDelayMs_upvr = require(Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs)
local GetFIntRobloxConnectFtuxDismissDelayMs_upvr = require(Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs)
local useMappedSignal_upvr = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local usePartyIcon_upvr = require(Chrome.Integrations.Party.usePartyIcon)
local ICON_SIZE_upvr = require(Chrome.ChromeShared.Unibar.Constants).ICON_SIZE
local SubMenuContext_upvr = require(Chrome.ChromeShared.Unibar.SubMenuContext)
local GetFFlagAnimateSubMenu_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAnimateSubMenu
return function(arg1) -- Line 66, Named "ConnectIcon"
	--[[ Upvalues[25]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: InExperienceAppChatModal_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: MappedSignal_upvr (readonly)
		[8]: FFlagEnableUnibarFtuxTooltips_upvr (readonly)
		[9]: InExperienceAppChatExperimentation_upvr (readonly)
		[10]: CommonFtuxTooltip_upvr (readonly)
		[11]: var18_upvr (readonly)
		[12]: game_DefineFastInt_result1_upvr (readonly)
		[13]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[14]: SquadExperimentation_upvr (readonly)
		[15]: GetFStringConnectTooltipLocalStorageKey_upvr (readonly)
		[16]: GetFIntRobloxConnectFtuxShowDelayMs_upvr (readonly)
		[17]: GetFIntRobloxConnectFtuxDismissDelayMs_upvr (readonly)
		[18]: useMappedSignal_upvr (readonly)
		[19]: usePartyIcon_upvr (readonly)
		[20]: ICON_SIZE_upvr (readonly)
		[21]: var6_upvw (read and write)
		[22]: var5_upvw (read and write)
		[23]: SubMenuContext_upvr (readonly)
		[24]: GetFFlagAnimateSubMenu_upvr (readonly)
		[25]: Foundation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 116 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local any_useState_result1, any_useState_result2_2_upvr = React_upvr.useState(InExperienceAppChatModal_upvr.default.unreadCount)
	if any_union_result1_upvr.shouldShowCustomBadge then
		React_upvr.useEffect(function() -- Line 73
			--[[ Upvalues[2]:
				[1]: InExperienceAppChatModal_upvr (copied, readonly)
				[2]: any_useState_result2_2_upvr (readonly)
			]]
			local any_Connect_result1_upvr_2 = InExperienceAppChatModal_upvr.default.unreadCountSignal.Event:Connect(function(arg1_2) -- Line 74
				--[[ Upvalues[1]:
					[1]: any_useState_result2_2_upvr (copied, readonly)
				]]
				any_useState_result2_2_upvr(arg1_2)
			end)
			return function() -- Line 77
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr_2 (readonly)
				]]
				any_Connect_result1_upvr_2:Disconnect()
			end
		end, {any_useState_result2_2_upvr})
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 116 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 33. Error Block 6 start (CF ANALYSIS FAILED)
	local _, any_useState_result2 = React_upvr.useState(InExperienceAppChatModal_upvr.default.currentSquadId)
	local var40_upvw = any_useState_result2
	-- KONSTANTERROR: [42] 33. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 41. Error Block 7 start (CF ANALYSIS FAILED)
	React_upvr.useEffect(function() -- Line 90
		--[[ Upvalues[3]:
			[1]: any_union_result1_upvr (readonly)
			[2]: InExperienceAppChatModal_upvr (copied, readonly)
			[3]: var40_upvw (read and write)
		]]
		if any_union_result1_upvr.isSquadIndicatorEnabled then
			local any_Connect_result1_upvr = InExperienceAppChatModal_upvr.default.currentSquadIdSignal.Event:Connect(function(arg1_3) -- Line 93
				--[[ Upvalues[1]:
					[1]: var40_upvw (copied, read and write)
				]]
				var40_upvw(arg1_3)
			end)
			return function() -- Line 97
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end
		function any_Connect_result1_upvr() -- Line 101
		end
		return any_Connect_result1_upvr
	end, dependencyArray_upvr(any_union_result1_upvr.isSquadIndicatorEnabled, var40_upvw))
	-- KONSTANTERROR: [53] 41. Error Block 7 end (CF ANALYSIS FAILED)
end