-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:21
-- Luau version 6, Types version 3
-- Time taken: 0.001338 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local useSelector_upvr = dependencies.RoactUtils.Hooks.RoactRodux.useSelector
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useSelector_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExpVoice_upvr() then
		return nil
	end
	return useSelector_upvr(function(arg1_2) -- Line 12
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
		local CrossExperienceVoice = arg1_2.Squad.CrossExperienceVoice
		-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 24. Error Block 24 start (CF ANALYSIS FAILED)
		if CrossExperienceVoice == true then
		else
		end
		do
			return true
		end
		-- KONSTANTERROR: [36] 24. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 29. Error Block 17 start (CF ANALYSIS FAILED)
		do
			return nil
		end
		-- KONSTANTERROR: [42] 29. Error Block 17 end (CF ANALYSIS FAILED)
	end)
end