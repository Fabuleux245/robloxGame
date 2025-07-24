-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:10
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PPDebugLogging", false)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr or not arg1 then
	else
		print("[PurchasePrompt]"..arg1())
	end
end