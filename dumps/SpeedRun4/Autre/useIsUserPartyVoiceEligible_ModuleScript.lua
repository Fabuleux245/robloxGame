-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:13
-- Luau version 6, Types version 3
-- Time taken: 0.001517 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local GetFStringPartyVoiceEligibilityAllowList_upvr = require(SquadsCore.Flags.GetFStringPartyVoiceEligibilityAllowList)
function getIsUserWhitelisted(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: GetFStringPartyVoiceEligibilityAllowList_upvr (readonly)
	]]
	for i in GetFStringPartyVoiceEligibilityAllowList_upvr():gmatch("%d+") do
		if tonumber(i) == arg1 then
			return true
		end
	end
	return false
end
local useCurrentSquadMember_upvr = require(script.Parent.useCurrentSquadMember)
local React_upvr = require(SquadsCore.Parent.React)
function useIsUserPartyVoiceEligible(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: useCurrentSquadMember_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var8_result1_upvr = useCurrentSquadMember_upvr(arg1)
	local module = {}
	module[1] = arg1
	return React_upvr.useMemo(function() -- Line 27
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		local var12 = var8_result1_upvr
		if var12 then
			if var8_result1_upvr.partyVoiceEligible ~= true then
				var12 = false
			else
				var12 = true
			end
		end
		return var12
	end, {var8_result1_upvr}) or React_upvr.useMemo(function() -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return getIsUserWhitelisted(arg1)
	end, module)
end
if not require(SquadsCore.Flags.GetFFlagEnablePartyVoiceOnlyForEligibleUsers)() then
	return function(arg1) -- Line 40
		return true
	end
end
return useIsUserPartyVoiceEligible