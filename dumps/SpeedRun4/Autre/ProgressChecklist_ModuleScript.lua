-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:15
-- Luau version 6, Types version 3
-- Time taken: 0.000807 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local IDVStep_upvr = require(AmpUpsell.Common.Enums).IDVStep
local React_upvr = require(Parent.React)
local ProgressTile_upvr = require(script.Parent.ProgressTile)
return function(arg1) -- Line 15, Named "ProgressChecklist"
	--[[ Upvalues[4]:
		[1]: useLocalization_upvr (readonly)
		[2]: IDVStep_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ProgressTile_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl = {
		connectedMobile = "Verification.Identity.Label.ConnectingToMobile";
		verifyingYou = "Verification.Identity.Label.VerifyingYou";
		waitingForResults = "Verification.Identity.Label.VerificationWaitingForResults";
		updatingRbxProfile = "Verification.Identity.Label.UpdatingRoblox";
	}
	if IDVStep_upvr.ConnectedMobile > arg1.latestStepCompleted then
	else
	end
	if IDVStep_upvr.Verified > arg1.latestStepCompleted then
		-- KONSTANTWARNING: GOTO [33] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 23. Error Block 29 start (CF ANALYSIS FAILED)
	if IDVStep_upvr.GotResults > arg1.latestStepCompleted then
		-- KONSTANTWARNING: GOTO [42] #30
	end
	-- KONSTANTERROR: [32] 23. Error Block 29 end (CF ANALYSIS FAILED)
end