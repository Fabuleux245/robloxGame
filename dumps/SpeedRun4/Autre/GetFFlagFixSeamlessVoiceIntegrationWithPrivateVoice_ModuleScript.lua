-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:44
-- Luau version 6, Types version 3
-- Time taken: 0.000606 seconds

game:DefineFastFlag("FixSeamlessVoiceIntegrationWithPrivateVoice2", false)
local GetFFlagEnableCrossExpVoice_upvr = require(script.Parent.GetFFlagEnableCrossExpVoice)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
	]]
	local var2_result1 = GetFFlagEnableCrossExpVoice_upvr()
	if var2_result1 then
		var2_result1 = game:GetFastFlag("FixSeamlessVoiceIntegrationWithPrivateVoice2")
	end
	return var2_result1
end