-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:38
-- Luau version 6, Types version 3
-- Time taken: 0.006074 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local GetFFlagAppChatInExpConnectIconEnableSquadIndicator_upvr = require(Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local SquadExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation
local Service_upvr = require(Chrome.Service)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local InExperienceAppChatModal_upvr = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal
local FFlagEnableUnibarFtuxTooltips_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUnibarFtuxTooltips
local LocalStore_upvr = require(Chrome.ChromeShared.Service.LocalStore)
local GetFStringConnectTooltipLocalStorageKey_upvr = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local React_upvr = require(CorePackages.Packages.React)
local ConnectIcon_upvr = require(script.Parent.ConnectIcon)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatInExpUseUnibarNotification", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppChatInExpForceCursor", false)
local Symbol_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
return function(arg1, arg2) -- Line 27
	--[[ Upvalues[14]:
		[1]: GetFFlagAppChatInExpConnectIconEnableSquadIndicator_upvr (readonly)
		[2]: SquadExperimentation_upvr (readonly)
		[3]: Service_upvr (readonly)
		[4]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[5]: InExperienceAppChatModal_upvr (readonly)
		[6]: FFlagEnableUnibarFtuxTooltips_upvr (readonly)
		[7]: LocalStore_upvr (readonly)
		[8]: GetFStringConnectTooltipLocalStorageKey_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: ConnectIcon_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[13]: Symbol_upvr (readonly)
		[14]: MouseIconOverrideService_upvr (readonly)
	]]
	local var33_upvr
	if arg1 == "connect_unibar" then
		var33_upvr = GetFFlagAppChatInExpConnectIconEnableSquadIndicator_upvr()
		if var33_upvr then
			var33_upvr = SquadExperimentation_upvr.getSquadEntrypointsEnabled()
		end
	end
	local tbl = {}
	tbl.id = arg1
	local isActivated
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		isActivated = "Feature.Squads.Label.Party"
	else
		isActivated = "Feature.Chat.Label.RobloxChat"
	end
	tbl.label = isActivated
	function isActivated() -- Line 37, Named "activated"
		--[[ Upvalues[4]:
			[1]: InExperienceAppChatModal_upvr (copied, readonly)
			[2]: FFlagEnableUnibarFtuxTooltips_upvr (copied, readonly)
			[3]: LocalStore_upvr (copied, readonly)
			[4]: GetFStringConnectTooltipLocalStorageKey_upvr (copied, readonly)
		]]
		InExperienceAppChatModal_upvr:toggleVisibility()
		if FFlagEnableUnibarFtuxTooltips_upvr then
			LocalStore_upvr.storeForLocalPlayer(GetFStringConnectTooltipLocalStorageKey_upvr(), true)
		end
	end
	tbl.activated = isActivated
	function isActivated() -- Line 43
		--[[ Upvalues[1]:
			[1]: InExperienceAppChatModal_upvr (copied, readonly)
		]]
		return InExperienceAppChatModal_upvr:getVisible()
	end
	tbl.isActivated = isActivated
	isActivated = {}
	function isActivated.Icon(arg1_9) -- Line 47
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: ConnectIcon_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[5]: var33_upvr (readonly)
		]]
		local module = {}
		module.integrationId = arg1
		module.isIconVisible = arg1_9.visible
		module.shouldShowCustomBadge = not game_DefineFastFlag_result1_upvr
		module.isSquadIndicatorEnabled = var33_upvr
		return React_upvr.createElement(ConnectIcon_upvr, module)
	end
	tbl.components = isActivated
	tbl.initialAvailability = arg2
	local any_register_result1_upvr = Service_upvr:register(tbl)
	if game_DefineFastFlag_result1_upvr then
		if var33_upvr then
			local function _(arg1_10, arg2_3) -- Line 62, Named "updateNotificationBadge"
				--[[ Upvalues[1]:
					[1]: any_register_result1_upvr (readonly)
				]]
				if arg1_10 == 0 or arg2_3 then
					any_register_result1_upvr.notification:clear()
				else
					any_register_result1_upvr.notification:fireCount(arg1_10)
				end
			end
			isActivated = InExperienceAppChatModal_upvr.default.currentSquadIdSignal
			isActivated.Event:Connect(function(arg1_11) -- Line 71
				--[[ Upvalues[2]:
					[1]: InExperienceAppChatModal_upvr (copied, readonly)
					[2]: any_register_result1_upvr (readonly)
				]]
				local default = InExperienceAppChatModal_upvr.default
				local unreadCount_4 = default.unreadCount
				if arg1_11 == "" then
					default = false
				else
					default = true
				end
				if unreadCount_4 == 0 or default then
					any_register_result1_upvr.notification:clear()
				else
					any_register_result1_upvr.notification:fireCount(unreadCount_4)
				end
			end)
			isActivated = InExperienceAppChatModal_upvr.default.unreadCountSignal
			isActivated.Event:Connect(function(arg1_12) -- Line 75
				--[[ Upvalues[2]:
					[1]: InExperienceAppChatModal_upvr (copied, readonly)
					[2]: any_register_result1_upvr (readonly)
				]]
				local var42
				if InExperienceAppChatModal_upvr.default.currentSquadId == "" then
					var42 = false
				else
					var42 = true
				end
				if arg1_12 == 0 or var42 then
					any_register_result1_upvr.notification:clear()
				else
					any_register_result1_upvr.notification:fireCount(arg1_12)
				end
			end)
			isActivated = InExperienceAppChatModal_upvr.default
			local unreadCount_2 = isActivated.unreadCount
			if InExperienceAppChatModal_upvr.default.currentSquadId == "" then
				isActivated = false
			else
				isActivated = true
			end
			if unreadCount_2 == 0 or isActivated then
				any_register_result1_upvr.notification:clear()
			else
				any_register_result1_upvr.notification:fireCount(unreadCount_2)
			end
		else
			local function _(arg1_13) -- Line 84, Named "updateUnreadMessageCount"
				--[[ Upvalues[1]:
					[1]: any_register_result1_upvr (readonly)
				]]
				if arg1_13 == 0 then
					any_register_result1_upvr.notification:clear()
				else
					any_register_result1_upvr.notification:fireCount(arg1_13)
				end
			end
			InExperienceAppChatModal_upvr.default.unreadCountSignal.Event:Connect(function(arg1_14) -- Line 92
				--[[ Upvalues[1]:
					[1]: any_register_result1_upvr (readonly)
				]]
				if arg1_14 == 0 then
					any_register_result1_upvr.notification:clear()
				else
					any_register_result1_upvr.notification:fireCount(arg1_14)
				end
			end)
			local unreadCount = InExperienceAppChatModal_upvr.default.unreadCount
			if unreadCount == 0 then
				any_register_result1_upvr.notification:clear()
			else
				any_register_result1_upvr.notification:fireCount(unreadCount)
			end
		end
	end
	if game_DefineFastFlag_result1_upvr_2 then
		local any_named_result1_upvr = Symbol_upvr.named("InExperienceRobloxConnect")
		InExperienceAppChatModal_upvr.default.visibilitySignal.Event:Connect(function(arg1_15) -- Line 103
			--[[ Upvalues[2]:
				[1]: MouseIconOverrideService_upvr (copied, readonly)
				[2]: any_named_result1_upvr (readonly)
			]]
			if arg1_15 then
				MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceShow)
			else
				MouseIconOverrideService_upvr.pop(any_named_result1_upvr)
			end
		end)
	end
	return any_register_result1_upvr
end