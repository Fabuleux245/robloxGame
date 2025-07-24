-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:26
-- Luau version 6, Types version 3
-- Time taken: 0.000914 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local useSelector_upvr = dependencies.RoactUtils.Hooks.RoactRodux.useSelector
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useSelector_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExpVoice_upvr() then
		return nil
	end
	return useSelector_upvr(function(arg1_2) -- Line 12
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 and arg1_2.Squad and arg1_2.Squad.CrossExperienceVoice then
			return arg1_2.Squad.CrossExperienceVoice.Participants.participants[arg1]
		end
		return nil
	end)
end