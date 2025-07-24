-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:12
-- Luau version 6, Types version 3
-- Time taken: 0.001195 seconds

local Players_upvr = game:GetService("Players")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PartyVoiceUseStateForLocalUserId", false)
local useSelector_upvr = require(script:FindFirstAncestor("SquadsCore").Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useIsUserPartyVoiceEligible_upvr = require(script.Parent.useIsUserPartyVoiceEligible)
function useIsLocalPlayerPartyVoiceEligible() -- Line 12
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useIsUserPartyVoiceEligible_upvr (readonly)
	]]
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = Players_upvr.LocalPlayer.UserId
		return var5
	end
	if not Players_upvr.LocalPlayer or not INLINED() then
		var5 = 0
	end
	if game_DefineFastFlag_result1_upvr then
		var5 = useSelector_upvr(function(arg1) -- Line 15
			if arg1 and arg1.LocalUserId then
				return tonumber(arg1.LocalUserId) or 0
			end
			return 0
		end)
	end
	return useIsUserPartyVoiceEligible_upvr(var5)
end
return useIsLocalPlayerPartyVoiceEligible