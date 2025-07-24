-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:56:27
-- Luau version 6, Types version 3
-- Time taken: 0.000663 seconds

game:DefineFastFlag("EnableAlwaysAvailableCamera", false)
local getFFlagDoNotPromptCameraPermissionsOnMount_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
return function() -- Line 10
	--[[ Upvalues[1]:
		[1]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableAlwaysAvailableCamera")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = getFFlagDoNotPromptCameraPermissionsOnMount_upvr()
	end
	return game_GetFastFlag_result1
end