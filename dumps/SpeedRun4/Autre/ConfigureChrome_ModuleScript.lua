-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:13
-- Luau version 6, Types version 3
-- Time taken: 0.005301 seconds

local Chrome_upvr = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
if not require(Chrome_upvr.Enabled)() then
	return nil
end
local ConfigureShortcuts_upvr = require(Chrome_upvr.ChromeShared.Shortcuts.ConfigureShortcuts)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local function _() -- Line 29, Named "initializeIntegrations"
	--[[ Upvalues[1]:
		[1]: Chrome_upvr (readonly)
	]]
	require(Chrome_upvr.Integrations)
end
local function _() -- Line 33
	--[[ Upvalues[1]:
		[1]: ConfigureShortcuts_upvr (readonly)
	]]
	ConfigureShortcuts_upvr()
end
local isConnectDropdownEnabled_upvr = require(Chrome_upvr.Integrations.Connect.isConnectDropdownEnabled)
local GetFFlagEnableChromePinIntegrations_upvr = SharedFlags.GetFFlagEnableChromePinIntegrations
local Service_upvr = require(Chrome_upvr.Service)
local ChromeAnalytics_upvr = require(Chrome_upvr.ChromeShared.Analytics.ChromeAnalytics)
local GetFFlagEnableJoinVoiceOnUnibar_upvr = SharedFlags.GetFFlagEnableJoinVoiceOnUnibar
local GetFFlagDebugEnableUnibarDummyIntegrations_upvr = SharedFlags.GetFFlagDebugEnableUnibarDummyIntegrations
local isConnectUnibarEnabled_upvr = require(Chrome_upvr.Integrations.Connect.isConnectUnibarEnabled)
local Constants_upvr = require(Chrome_upvr.Integrations.Party.Constants)
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local GuiService_upvr = game:GetService("GuiService")
local GetFFlagEnableSongbirdInChrome_upvr = require(Chrome_upvr.Flags.GetFFlagEnableSongbirdInChrome)
require(Chrome_upvr.Integrations)
if SharedFlags.FFlagChromeCentralizedShortcutConfig then
	ConfigureShortcuts_upvr()
end
;(function() -- Line 37, Named "configureUnibar"
	--[[ Upvalues[12]:
		[1]: isConnectDropdownEnabled_upvr (readonly)
		[2]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
		[3]: Service_upvr (readonly)
		[4]: ChromeAnalytics_upvr (readonly)
		[5]: GetFFlagEnableJoinVoiceOnUnibar_upvr (readonly)
		[6]: GetFFlagDebugEnableUnibarDummyIntegrations_upvr (readonly)
		[7]: isConnectUnibarEnabled_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: isInExperienceUIVREnabled_upvr (readonly)
		[10]: isSpatial_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: GetFFlagEnableSongbirdInChrome_upvr (readonly)
	]]
	local tbl_5 = {"leaderboard", "emotes", "backpack"}
	table.insert(tbl_5, "respawn")
	table.insert(tbl_5, 1, "trust_and_safety")
	local var31
	if isConnectDropdownEnabled_upvr() then
		var31 = 1
		table.insert(tbl_5, var31, "connect_dropdown")
	end
	if GetFFlagEnableChromePinIntegrations_upvr() then
		var31 = "trust_and_safety"
		if not Service_upvr:isUserPinned(var31) then
			var31 = "trust_and_safety"
			Service_upvr:setUserPin(var31, true)
			var31 = "trust_and_safety"
			ChromeAnalytics_upvr.default:setPin(var31, true, Service_upvr:userPins())
		end
	end
	local tbl_10 = {}
	var31 = "chat"
	tbl_10[1] = "toggle_mic_mute"
	tbl_10[2] = var31
	tbl_10[3] = "nine_dot"
	if GetFFlagEnableJoinVoiceOnUnibar_upvr() then
		var31 = tbl_10
		table.insert(var31, 2, "join_voice")
	end
	if GetFFlagDebugEnableUnibarDummyIntegrations_upvr() then
		var31 = tbl_10
		table.insert(var31, 1, "dummy_window")
		var31 = tbl_10
		table.insert(var31, 1, "dummy_window_2")
		var31 = tbl_10
		table.insert(var31, 1, "dummy_container")
	end
	if isConnectUnibarEnabled_upvr() then
		var31 = tbl_10
		table.insert(var31, 1, "connect_unibar")
	end
	var31 = tbl_10
	local table_find_result1 = table.find(var31, "toggle_mic_mute")
	if table_find_result1 then
		var31 = table.insert
		var31(tbl_10, table_find_result1 + 1, Constants_upvr.TOGGLE_MIC_INTEGRATION_ID)
	end
	var31 = isInExperienceUIVREnabled_upvr
	if var31 then
		var31 = isSpatial_upvr()
		if var31 then
			var31 = {}
			var31[1] = "vr_toggle_button"
			var31[2] = "vr_safety_bubble"
			Service_upvr:configureMenu({var31, tbl_10})
			-- KONSTANTWARNING: GOTO [163] #127
		end
	end
	var31 = Service_upvr
	var31 = var31:configureMenu
	var31({tbl_10})
	var31 = isInExperienceUIVREnabled_upvr
	if var31 then
		var31 = isSpatial_upvr()
		if not var31 then
			var31 = table.insert
			var31(tbl_5, 2, "camera_entrypoint")
			var31 = table.insert
			var31(tbl_5, 2, "selfie_view")
			-- KONSTANTWARNING: GOTO [201] #157
		end
	else
		var31 = table.insert
		var31(tbl_5, 2, "camera_entrypoint")
		var31 = table.insert
		var31(tbl_5, 2, "selfie_view")
	end
	var31 = not isSpatial_upvr()
	if var31 then
		var31 = not GuiService_upvr:IsTenFootInterface()
	end
	if GetFFlagEnableSongbirdInChrome_upvr() and var31 then
		table.insert(tbl_5, 4, "music_entrypoint")
	end
	Service_upvr:configureSubMenu("nine_dot", tbl_5)
end)()
return nil