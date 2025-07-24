-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:56
-- Luau version 6, Types version 3
-- Time taken: 0.000613 seconds

game:DefineFastFlag("JoinWithoutMicPermissions3", false)
local var2_upvw = true
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	if arg1 ~= nil then
		var2_upvw = arg1
	end
	local game_GetFastFlag_result1 = game:GetFastFlag("JoinWithoutMicPermissions3")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = var2_upvw
	end
	return game_GetFastFlag_result1
end