-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:29
-- Luau version 6, Types version 3
-- Time taken: 0.001255 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local tbl_2_upvr = {
	age_failure = "isAgeEligible";
	phone_verification_failure = "isPhoneVerificationEligible";
	ixp_failure = "isIXPEligible";
	rollout_failure = "isRolloutEligible";
}
local module = {}
local Cryo_upvr = require(Parent.Cryo)
module[require(Parent.AppChatNetworking).rodux.GetUnfilteredThreadEligibility.Succeeded.name] = function(arg1, arg2) -- Line 33
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local responseBody = arg2.responseBody
	local tbl = {
		isFullyEligible = responseBody.is_fully_eligible;
		isAgeEligible = true;
		isPhoneVerificationEligible = true;
		isIXPEligible = true;
		isRolloutEligible = true;
	}
	if not responseBody.is_fully_eligible then
		for _, v in ipairs(responseBody.failure_reasons) do
			local var14 = tbl_2_upvr[v]
			if var14 then
				tbl[var14] = false
			end
		end
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		eligibility = tbl;
	})
end
return require(Parent.Rodux).createReducer({
	eligibility = {};
}, module)