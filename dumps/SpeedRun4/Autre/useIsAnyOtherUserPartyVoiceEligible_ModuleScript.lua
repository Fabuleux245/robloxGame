-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:42
-- Luau version 6, Types version 3
-- Time taken: 0.001479 seconds

local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local GetFStringPartyVoiceEligibilityAllowList_upvr = dependencies.SquadsCore.Flags.GetFStringPartyVoiceEligibilityAllowList
function getIsUserWhitelisted(arg1) -- Line 17
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
local Players_upvr = game:GetService("Players")
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local React_upvr = dependencies.React
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
function useIsAnyOtherUserPartyVoiceEligible() -- Line 26
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: useCurrentSquadSelector_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
	]]
	local var11_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11_upvr = Players_upvr.LocalPlayer.UserId
		return var11_upvr
	end
	if not Players_upvr.LocalPlayer or not INLINED() then
		var11_upvr = 0
	end
	local useCurrentSquadSelector_upvr_result1_upvr = useCurrentSquadSelector_upvr()
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 29
		--[[ Upvalues[1]:
			[1]: useCurrentSquadSelector_upvr_result1_upvr (readonly)
		]]
		if useCurrentSquadSelector_upvr_result1_upvr then
			return useCurrentSquadSelector_upvr_result1_upvr.members
		end
		return {}
	end, {useCurrentSquadSelector_upvr_result1_upvr})
	return React_upvr.useMemo(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: var11_upvr (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
		]]
		if var11_upvr ~= 0 then
			for _, v in ipairs(any_useMemo_result1_upvr) do
				if v.userId ~= var11_upvr and (v.partyVoiceEligible or getIsUserWhitelisted(v.userId)) then
					return true
				end
			end
		end
		return false
	end, dependencyArray_upvr(var11_upvr, any_useMemo_result1_upvr))
end
if not dependencies.SquadsCore.Flags.GetFFlagEnablePartyVoiceOnlyForEligibleUsers() then
	return function() -- Line 53
		return true
	end
end
return useIsAnyOtherUserPartyVoiceEligible