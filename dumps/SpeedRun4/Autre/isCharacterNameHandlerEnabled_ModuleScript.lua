-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:31
-- Luau version 6, Types version 3
-- Time taken: 0.000968 seconds

game:DefineFastInt("CharacterNameHandlerUserProfileApiRollout", 0)
game:DefineFastFlag("CharacterNameHandlerUserProfileApiEnabledForAll", false)
local function _() -- Line 12
	return game:GetFastFlag("CharacterNameHandlerUserProfileApiEnabledForAll")
end
local any_rolloutByApplicationId_result1_upvr = require(script:FindFirstAncestor("SharedFlags").Parent.AppCommonLib).rolloutByApplicationId(function() -- Line 8
	return game:GetFastInt("CharacterNameHandlerUserProfileApiRollout")
end)
return function() -- Line 18
	--[[ Upvalues[1]:
		[1]: any_rolloutByApplicationId_result1_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("CharacterNameHandlerUserProfileApiEnabledForAll")
	if not game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = any_rolloutByApplicationId_result1_upvr()
	end
	return game_GetFastFlag_result1
end