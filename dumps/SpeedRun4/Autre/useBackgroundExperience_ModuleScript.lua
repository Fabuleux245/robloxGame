-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:17
-- Luau version 6, Types version 3
-- Time taken: 0.000823 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local useSelector_upvr = dependencies.RoactUtils.Hooks.RoactRodux.useSelector
return function() -- Line 9
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useSelector_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExpVoice_upvr() then
		return nil
	end
	return useSelector_upvr(function(arg1) -- Line 13
		if arg1 and arg1.Squad and arg1.Squad.CrossExperienceVoice then
			return arg1.Squad.CrossExperienceVoice.Experience
		end
		return nil
	end)
end