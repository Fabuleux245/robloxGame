-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:14
-- Luau version 6, Types version 3
-- Time taken: 0.001549 seconds

local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.Packages.InGameMenuDependencies).PolicyProvider
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local any_withGetPolicyImplementation_result1 = PolicyProvider.withGetPolicyImplementation(PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy"))
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseGUACforDUARPolicy", false)
local isSubjectToDesktopPolicies_upvr = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies
local GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr = require(SharedFlags).GetFFlagGateEducationalPopupVisibilityViaGUAC
local GetFIntEducationalPopupDisplayMaxCount_upvr = require(script.Parent.Parent.Flags.GetFIntEducationalPopupDisplayMaxCount)
local GetFFlagUseVoiceExitBetaLanguage_upvr = require(SharedFlags).GetFFlagUseVoiceExitBetaLanguage
function any_withGetPolicyImplementation_result1.Mapper(arg1) -- Line 18
	--[[ Upvalues[5]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: isSubjectToDesktopPolicies_upvr (readonly)
		[3]: GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr (readonly)
		[4]: GetFIntEducationalPopupDisplayMaxCount_upvr (readonly)
		[5]: GetFFlagUseVoiceExitBetaLanguage_upvr (readonly)
	]]
	return {
		enableInGameHomeIcon = function() -- Line 20, Named "enableInGameHomeIcon"
			--[[ Upvalues[3]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr then
				return arg1.EnableInGameHomeIcon or false
			end
			return isSubjectToDesktopPolicies_upvr()
		end;
		enableEducationalPopup = function() -- Line 28, Named "enableEducationalPopup"
			--[[ Upvalues[3]:
				[1]: isSubjectToDesktopPolicies_upvr (copied, readonly)
				[2]: GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			if isSubjectToDesktopPolicies_upvr() and game:GetEngineFeature("NativeCloseIntercept") then
				if GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr() then
					if arg1.InExperienceCanViewEducationalPopup == nil then
						return true
					end
					return arg1.InExperienceCanViewEducationalPopup
				end
				return true
			end
			return false
		end;
		educationalPopupMaxDisplayCount = function() -- Line 41, Named "educationalPopupMaxDisplayCount"
			--[[ Upvalues[2]:
				[1]: isSubjectToDesktopPolicies_upvr (copied, readonly)
				[2]: GetFIntEducationalPopupDisplayMaxCount_upvr (copied, readonly)
			]]
			local var12
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var12 = GetFIntEducationalPopupDisplayMaxCount_upvr()
				return var12
			end
			if not isSubjectToDesktopPolicies_upvr() or not INLINED() then
				var12 = 0
			end
			return var12
		end;
		getGameInfoShowChatFeatures = function() -- Line 45, Named "getGameInfoShowChatFeatures"
			--[[ Upvalues[2]:
				[1]: GetFFlagUseVoiceExitBetaLanguage_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if GetFFlagUseVoiceExitBetaLanguage_upvr() then
				return arg1.GameInfoShowChatFeatures or false
			end
			return false
		end;
		enableFullscreenTitleBar = function() -- Line 52, Named "enableFullscreenTitleBar"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.FullscreenTitleBarEnabled or false
		end;
		getDisplayCheckboxInVoiceConsent = function() -- Line 56, Named "getDisplayCheckboxInVoiceConsent"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.DisplayCheckboxInVoiceConsent == nil then
				return true
			end
			return arg1.DisplayCheckboxInVoiceConsent
		end;
	}
end
return any_withGetPolicyImplementation_result1