-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:19
-- Luau version 6, Types version 3
-- Time taken: 0.000383 seconds

local FFlagNewUpsellModalExperiment_upvr = require(script.Parent.Parent.Parent.Flags.FFlagNewUpsellModalExperiment)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NewUpsellModalExperimentForPlatform", false)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: FFlagNewUpsellModalExperiment_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var4 = FFlagNewUpsellModalExperiment_upvr
	if not var4 then
		var4 = game_DefineFastFlag_result1_upvr
	end
	return var4
end