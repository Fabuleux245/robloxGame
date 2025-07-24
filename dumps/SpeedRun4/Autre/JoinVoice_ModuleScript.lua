-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:41
-- Luau version 6, Types version 3
-- Time taken: 0.004469 seconds

-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
local Chrome = script:FindFirstAncestor("Chrome")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local default_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
local Constants_upvr = require(RobloxGui_upvr.Modules.VoiceChat.Constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("JoinVoiceHideWhenPartyVoiceFocused", false)
local Service_upvr = require(Chrome.Service)
local var8_upvw = false
local Unavailable_2_upvw = Service_upvr.AvailabilitySignal.Unavailable
local Constants_upvr_2 = require(CorePackages.Workspace.Packages.VoiceChatCore).Constants
local var11_upvw = false
function getShouldShowJoinVoiceTooltip() -- Line 49
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: var11_upvw (read and write)
	]]
	local any_FetchAgeVerificationOverlay_result1_2 = default_upvr:FetchAgeVerificationOverlay()
	local var16 = not var11_upvw
	if var16 then
		var16 = default_upvr:HasSeamlessVoiceFeature(Constants_upvr_2.SeamlessVoiceFeatures.LikelySpeakingBubblesRemoved)
		if var16 then
			var16 = any_FetchAgeVerificationOverlay_result1_2
			if var16 then
				var16 = any_FetchAgeVerificationOverlay_result1_2.showJoinVoiceUpsellTooltip
			end
		end
	end
	var11_upvw = true
	return var16
end
local tbl_2 = {
	initialAvailability = Service_upvr.AvailabilitySignal.Unavailable;
	id = "join_voice";
	label = "CoreScripts.TopBar.JoinVoice";
}
local GetFFlagIntegratePhoneUpsellJoinVoice_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice
function tbl_2.activated() -- Line 67
	--[[ Upvalues[3]:
		[1]: GetFFlagIntegratePhoneUpsellJoinVoice_upvr (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: default_upvr (readonly)
	]]
	local var19
	if GetFFlagIntegratePhoneUpsellJoinVoice_upvr() then
		var19 = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	else
		var19 = nil
	end
	default_upvr:JoinVoice(var19)
end
local tbl_3 = {}
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("ReplaceJoinVoiceIconToMuted", false)
local GetIcon_upvr = require(CorePackages.Workspace.Packages.VoiceChat).Utils.GetIcon
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("EnableChromeJoinVoiceTooltip", false)
local React_upvr = require(CorePackages.Packages.React)
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local ICON_SIZE_upvr = require(Chrome.ChromeShared.Unibar.Constants).ICON_SIZE
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
local CommonFtuxTooltip_upvr = require(Chrome.Integrations.CommonFtuxTooltip)
local var29_upvr = require(Chrome.Flags.FFlagEnableUnibarTooltipQueue)()
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UnibarJoinVoiceTooltipPriority", 1000)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("JoinVoiceFtuxShowDelayMs", 1000)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("JoinVoiceFtuxDismissDelayMs", 5000)
function tbl_3.Icon() -- Line 74
	--[[ Upvalues[14]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: GetIcon_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[4]: React_upvr (readonly)
		[5]: Foundation_upvr (readonly)
		[6]: ICON_SIZE_upvr (readonly)
		[7]: CommonIcon_upvr (readonly)
		[8]: CommonFtuxTooltip_upvr (readonly)
		[9]: var29_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr (readonly)
		[11]: game_DefineFastInt_result1_upvr_2 (readonly)
		[12]: game_DefineFastInt_result1_upvr_3 (readonly)
		[13]: default_upvr (readonly)
		[14]: Constants_upvr (readonly)
	]]
	local var33 = "icons/controls/publicAudioJoin"
	if game_DefineFastFlag_result1_upvr_4 then
		var33 = GetIcon_upvr("Muted", "MicLight")
	end
	local var34
	if game_DefineFastFlag_result1_upvr_3 then
		local module = {}
		var34 = 0
		module.Size = UDim2.new(0, ICON_SIZE_upvr, var34, ICON_SIZE_upvr)
		local module_2 = {
			Icon = CommonIcon_upvr(var33);
		}
		local tbl = {}
		if var29_upvr then
			var34 = "JOIN_VOICE"
		else
			var34 = nil
		end
		tbl.id = var34
		if var29_upvr then
		else
		end
		tbl.priority = nil
		tbl.isIconVisible = getShouldShowJoinVoiceTooltip()
		tbl.dismissOnOutsideInput = true
		tbl.headerKey = "CoreScripts.FTUX.Heading.JoinVoice"
		tbl.bodyKey = "CoreScripts.FTUX.Label.JoinVoiceDescription"
		tbl.showDelay = game_DefineFastInt_result1_upvr_2
		tbl.dismissDelay = game_DefineFastInt_result1_upvr_3
		function tbl.onDismissed() -- Line 94
			--[[ Upvalues[2]:
				[1]: default_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			pcall(function() -- Line 95
				--[[ Upvalues[2]:
					[1]: default_upvr (copied, readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				default_upvr:RecordUserSeenModal(Constants_upvr.MODAL_IDS.IN_EXP_JOIN_VOICE_UPSELL)
			end)
		end
		module_2.Tooltip = CommonFtuxTooltip_upvr(tbl)
		return React_upvr.createElement(Foundation_upvr.View, module, module_2)
	end
	return CommonIcon_upvr(var33)
end
tbl_2.components = tbl_3
local any_register_result1_upvw = Service_upvr:register(tbl_2)
-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [310] 198. Error Block 2 start (CF ANALYSIS FAILED)
do
	return any_register_result1_upvw
end
-- KONSTANTERROR: [310] 198. Error Block 2 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [312] 200. Error Block 3 start (CF ANALYSIS FAILED)
local function _(arg1) -- Line 113, Named "setAvailability"
	--[[ Upvalues[4]:
		[1]: Unavailable_2_upvw (read and write)
		[2]: var8_upvw (read and write)
		[3]: Service_upvr (readonly)
		[4]: any_register_result1_upvw (read and write)
	]]
	Unavailable_2_upvw = arg1
	if not var8_upvw then
		if arg1 == Service_upvr.AvailabilitySignal.Available then
			any_register_result1_upvw.availability:available()
			return
		end
		if arg1 == Service_upvr.AvailabilitySignal.Unavailable then
			any_register_result1_upvw.availability:unavailable()
		end
	end
end
local VOICE_JOIN_PROGRESS_upvr = Constants_upvr.VOICE_JOIN_PROGRESS
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("CheckShouldShowJoinVoiceInEvent", false)
local PromptType_upvr = require(RobloxGui_upvr.Modules.VoiceChatPrompt.PromptType)
local function _(arg1) -- Line 124, Named "HideOrShowJoinVoiceButton"
	--[[ Upvalues[10]:
		[1]: VOICE_JOIN_PROGRESS_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: default_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: Service_upvr (readonly)
		[6]: Unavailable_2_upvw (read and write)
		[7]: var8_upvw (read and write)
		[8]: any_register_result1_upvw (read and write)
		[9]: Constants_upvr (readonly)
		[10]: PromptType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 36. Error Block 11 start (CF ANALYSIS FAILED)
	any_register_result1_upvw.availability:available()
	do
		return
	end
	-- KONSTANTERROR: [50] 36. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 41. Error Block 34 start (CF ANALYSIS FAILED)
	if arg1 == VOICE_JOIN_PROGRESS_upvr.Joined then
		if game_DefineFastFlag_result1_upvr then
			local Unavailable = Service_upvr.AvailabilitySignal.Unavailable
			Unavailable_2_upvw = Unavailable
			if not var8_upvw then
				if Unavailable == Service_upvr.AvailabilitySignal.Available then
					any_register_result1_upvw.availability:available()
				elseif Unavailable == Service_upvr.AvailabilitySignal.Unavailable then
					any_register_result1_upvw.availability:unavailable()
					-- KONSTANTWARNING: GOTO [106] #74
				end
				-- KONSTANTWARNING: GOTO [106] #74
			end
		else
			any_register_result1_upvw.availability:unavailable()
		end
		if default_upvr.inExpUpsellEntrypoint == Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
			default_upvr:ToggleMic()
			default_upvr:showPrompt(PromptType_upvr.VoiceConsentAcceptedToast)
		end
	end
	-- KONSTANTERROR: [57] 41. Error Block 34 end (CF ANALYSIS FAILED)
end
-- KONSTANTERROR: [312] 200. Error Block 3 end (CF ANALYSIS FAILED)