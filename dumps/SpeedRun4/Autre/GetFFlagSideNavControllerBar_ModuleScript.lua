-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:11
-- Luau version 6, Types version 3
-- Time taken: 0.000590 seconds

game:DefineFastFlag("SideNavControllerBar", false)
local GetFFlagIGMGamepadSelectionHistory_upvr = require(script.Parent.GetFFlagIGMGamepadSelectionHistory)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("SideNavControllerBar")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = GetFFlagIGMGamepadSelectionHistory_upvr()
	end
	return game_GetFastFlag_result1
end