-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:09
-- Luau version 6, Types version 3
-- Time taken: 0.018558 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local SharedFlags = require(Parent.SharedFlags)
local Players_upvr = game:GetService("Players")
local useCurrentSquadId_upvr = require(SquadsCore.Hooks.useCurrentSquadId)
local useCurrentSquadMember_upvr = require(script.Parent.useCurrentSquadMember)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local useStore_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useStore
local useIsCurrentSquadPartyVoiceEligible_upvr = require(script.Parent.useIsCurrentSquadPartyVoiceEligible)
local useIsBackgroundDMActive_upvr = CrossExperienceVoice.Hooks.useIsBackgroundDMActive
local useIsLocalPlayerPartyVoiceEligible_upvr = require(script.Parent.useIsLocalPlayerPartyVoiceEligible)
local useIsVoiceRetriableError_upvr = CrossExperienceVoice.Hooks.useIsVoiceRetriableError
local FFlagEnableVoiceEuConsentPrompt_upvr = SharedFlags.FFlagEnableVoiceEuConsentPrompt
local getTableAppStorageKey_upvr = require(SquadsCore.Utils.appStorageAccess).getTableAppStorageKey
local SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr = require(SquadsCore.Common.Constants).SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr = require(SquadsCore.Common.Constants).SQUAD_VOICE_EU_MODAL_SEEN_KEY
local displayEuConsentPrompt_upvr = require(SquadsCore.Utils.displayEuConsentPrompt)
local default_upvr = CrossExperienceVoice.CrossExperienceVoiceManager.default
local FFlagDisconnectOnBackgroundDmPassiveState_upvr = SharedFlags.FFlagDisconnectOnBackgroundDmPassiveState
local SquadPromptType_upvr = require(SquadsCore.Enums.SquadPromptType)
local getFFlagEnableCrossExpVoiceMemoryCheck_upvr = SharedFlags.getFFlagEnableCrossExpVoiceMemoryCheck
function useCrossExperienceVoiceConnector() -- Line 34
	--[[ Upvalues[21]:
		[1]: Players_upvr (readonly)
		[2]: useCurrentSquadId_upvr (readonly)
		[3]: useCurrentSquadMember_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: SquadExternalContractContext_upvr (readonly)
		[7]: useStore_upvr (readonly)
		[8]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[9]: useIsBackgroundDMActive_upvr (readonly)
		[10]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[11]: useIsVoiceRetriableError_upvr (readonly)
		[12]: FFlagEnableVoiceEuConsentPrompt_upvr (readonly)
		[13]: getTableAppStorageKey_upvr (readonly)
		[14]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (readonly)
		[17]: displayEuConsentPrompt_upvr (readonly)
		[18]: default_upvr (readonly)
		[19]: FFlagDisconnectOnBackgroundDmPassiveState_upvr (readonly)
		[20]: SquadPromptType_upvr (readonly)
		[21]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var212_upvr
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 29 start (CF ANALYSIS FAILED)
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var212_upvr = Players_upvr.LocalPlayer.UserId
		return var212_upvr
	end
	if not Players_upvr.LocalPlayer or not INLINED_6() then
		-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
		var212_upvr = 0
		-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	end
	local var213_upvr = useCurrentSquadId_upvr() or ""
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local useStore_upvr_result1_upvr = useStore_upvr()
	local useIsBackgroundDMActive_upvr_result1_upvr = useIsBackgroundDMActive_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr_4 = React_upvr.useState(false)
	if var213_upvr then
		if var213_upvr ~= "" then
			if useCurrentSquadMember_upvr(var212_upvr) then
				if not useIsBackgroundDMActive_upvr_result1_upvr then
					if useIsCurrentSquadPartyVoiceEligible_upvr() then
						if useIsLocalPlayerPartyVoiceEligible_upvr() then
							local var219_upvr = not useIsVoiceRetriableError_upvr()
						end
					end
				end
			end
		end
	end
	React_upvr.useEffect(function() -- Line 58
		--[[ Upvalues[6]:
			[1]: FFlagEnableVoiceEuConsentPrompt_upvr (copied, readonly)
			[2]: var219_upvr (readonly)
			[3]: getTableAppStorageKey_upvr (copied, readonly)
			[4]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (copied, readonly)
			[5]: var212_upvr (readonly)
			[6]: any_useState_result2_upvr_4 (readonly)
		]]
		if FFlagEnableVoiceEuConsentPrompt_upvr then
			if var219_upvr then
				if getTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr)[tostring(var212_upvr)] then
					any_useState_result2_upvr_4(true)
				end
			end
		end
	end, dependencyArray_upvr(var212_upvr, var219_upvr))
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var225 = var219_upvr
	React_upvr.useEffect(function() -- Line 70
		--[[ Upvalues[9]:
			[1]: FFlagEnableVoiceEuConsentPrompt_upvr (copied, readonly)
			[2]: var219_upvr (readonly)
			[3]: var212_upvr (readonly)
			[4]: getTableAppStorageKey_upvr (copied, readonly)
			[5]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (copied, readonly)
			[6]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (copied, readonly)
			[7]: useDispatch_upvr_result1_upvr (readonly)
			[8]: displayEuConsentPrompt_upvr (copied, readonly)
			[9]: any_useContext_result1_upvr (readonly)
		]]
		if FFlagEnableVoiceEuConsentPrompt_upvr then
			if var219_upvr then
				local tostring_result1_6 = tostring(var212_upvr)
				local var17_result1_2 = getTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr)
				if not var17_result1_2[tostring_result1_6] then
					useDispatch_upvr_result1_upvr(displayEuConsentPrompt_upvr(any_useContext_result1_upvr.setSquadPrompt, tostring_result1_6, var17_result1_2, getTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr)))
				end
			end
		end
	end, dependencyArray_upvr(var212_upvr, displayEuConsentPrompt_upvr, var225, any_useContext_result1_upvr.setSquadPrompt))
	React_upvr.useEffect(function() -- Line 95
		--[[ Upvalues[3]:
			[1]: FFlagEnableVoiceEuConsentPrompt_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
		]]
		if FFlagEnableVoiceEuConsentPrompt_upvr then
			local any_Connect_result1_upvr_4 = default_upvr.VoiceEuModalConsented.Event:Connect(function() -- Line 98
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_4 (copied, readonly)
				]]
				any_useState_result2_upvr_4(true)
			end)
			return function() -- Line 102
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr_4 (readonly)
				]]
				any_Connect_result1_upvr_4:Disconnect()
			end
		end
		function any_Connect_result1_upvr_4() -- Line 106
		end
		return any_Connect_result1_upvr_4
	end, {})
	React_upvr.useEffect(function() -- Line 109
		--[[ Upvalues[3]:
			[1]: useIsBackgroundDMActive_upvr_result1_upvr (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: FFlagDisconnectOnBackgroundDmPassiveState_upvr (copied, readonly)
		]]
		if useIsBackgroundDMActive_upvr_result1_upvr then
			default_upvr:setAsConnected()
		elseif FFlagDisconnectOnBackgroundDmPassiveState_upvr then
			default_upvr:setAsDisconnected()
		end
	end, {useIsBackgroundDMActive_upvr_result1_upvr})
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function(arg1, arg2, arg3) -- Line 117
		--[[ Upvalues[1]:
			[1]: default_upvr (copied, readonly)
		]]
		local tbl_20 = {}
		tbl_20.partyId = arg1
		tbl_20.force = arg2
		tbl_20.shouldIgnoreMemoryWarning = arg3
		default_upvr:join(tbl_20)
	end, {})
	local tbl_18 = {}
	if FFlagEnableVoiceEuConsentPrompt_upvr then
		var225 = any_useState_result1_upvr
	else
		var225 = nil
	end
	tbl_18[1] = var219_upvr
	tbl_18[2] = var225
	React_upvr.useEffect(function() -- Line 126
		--[[ Upvalues[9]:
			[1]: var219_upvr (readonly)
			[2]: FFlagEnableVoiceEuConsentPrompt_upvr (copied, readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: default_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr_7 (readonly)
			[6]: var213_upvr (readonly)
			[7]: any_useContext_result1_upvr (readonly)
			[8]: useStore_upvr_result1_upvr (readonly)
			[9]: SquadPromptType_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 12 start (CF ANALYSIS FAILED)
		if FFlagEnableVoiceEuConsentPrompt_upvr then
			if not any_useState_result1_upvr then
				-- KONSTANTERROR: [6] 7. Error Block 4 start (CF ANALYSIS FAILED)
				do
					return
				end
				-- KONSTANTERROR: [6] 7. Error Block 4 end (CF ANALYSIS FAILED)
			end
		end
		if default_upvr:performJoinFeasibilityCheck() then
			any_useCallback_result1_upvr_7(var213_upvr)
		else
			local tbl_19 = {
				hideCancelButton = false;
				promptType = SquadPromptType_upvr.JoinWithLowMemory;
			}
			local function onConfirm() -- Line 139
			end
			tbl_19.onConfirm = onConfirm
			function tbl_19.onCancel() -- Line 140
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_7 (copied, readonly)
					[2]: var213_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_7(var213_upvr, true, true)
			end
			any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, tbl_19)
			-- KONSTANTERROR: [2] 3. Error Block 12 end (CF ANALYSIS FAILED)
		end
	end, tbl_18)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 149
		--[[ Upvalues[1]:
			[1]: default_upvr (copied, readonly)
		]]
		default_upvr:leave()
	end, {})
	local any_useRef_result1_upvr_4 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 154
		--[[ Upvalues[7]:
			[1]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_4 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: useStore_upvr_result1_upvr (readonly)
			[6]: SquadPromptType_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvr (readonly)
		]]
		if not getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
			return function() -- Line 156
			end
		end
		local function _() -- Line 159
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
			]]
			if any_useRef_result1_upvr_4.current then
				any_useRef_result1_upvr_4.current:Disconnect()
				any_useRef_result1_upvr_4.current = nil
			end
		end
		any_useRef_result1_upvr_4.current = default_upvr.MemoryLow.Event:Connect(function() -- Line 166
			--[[ Upvalues[5]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
				[2]: any_useContext_result1_upvr (copied, readonly)
				[3]: useStore_upvr_result1_upvr (copied, readonly)
				[4]: SquadPromptType_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr_4.current then
				any_useRef_result1_upvr_4.current:Disconnect()
				any_useRef_result1_upvr_4.current = nil
			end
			any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, {
				hideCancelButton = false;
				promptType = SquadPromptType_upvr.DisconnectVoiceDueToLowMemory;
				onConfirm = function() -- Line 173, Named "onConfirm"
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr()
				end;
			})
		end)
		return function() -- Line 178
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
			]]
			if any_useRef_result1_upvr_4.current then
				any_useRef_result1_upvr_4.current:Disconnect()
				any_useRef_result1_upvr_4.current = nil
			end
		end
	end)
	do
		return any_useCallback_result1_upvr
	end
	-- KONSTANTERROR: [2] 3. Error Block 29 end (CF ANALYSIS FAILED)
end
return useCrossExperienceVoiceConnector