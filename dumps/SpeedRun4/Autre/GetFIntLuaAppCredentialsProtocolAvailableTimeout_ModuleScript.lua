-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:27
-- Luau version 6, Types version 3
-- Time taken: 0.000519 seconds

game:DefineFastInt("LuaAppCredentialsProtocolAvailableTimeout", 2)
return function() -- Line 5
	local game_GetFastInt_result1 = game:GetFastInt("LuaAppCredentialsProtocolAvailableTimeout")
	if game_GetFastInt_result1 <= 0 then
		return 2
	end
	return game_GetFastInt_result1
end