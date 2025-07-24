-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:08:23
-- Luau version 6, Types version 3
-- Time taken: 0.000624 seconds

game:DefineFastFlag("UGCValidateBoundsManipulation", false)
local getEngineFeatureEngineUGCValidateBoundsManipulation_upvr = require(script.Parent.Parent.flags.getEngineFeatureEngineUGCValidateBoundsManipulation)
return function() -- Line 9
	--[[ Upvalues[1]:
		[1]: getEngineFeatureEngineUGCValidateBoundsManipulation_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("UGCValidateBoundsManipulation")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = getEngineFeatureEngineUGCValidateBoundsManipulation_upvr()
	end
	return game_GetFastFlag_result1
end