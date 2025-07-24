-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:40
-- Luau version 6, Types version 3
-- Time taken: 0.000407 seconds

game:DefineFastFlag("FixConnectTabSearchBarHeight", false)
local GetFFlagUIBloxUseNewHeaderBar_upvr = require(script.Parent.UIBlox.GetFFlagUIBloxUseNewHeaderBar)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("FixConnectTabSearchBarHeight")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = GetFFlagUIBloxUseNewHeaderBar_upvr()
	end
	return game_GetFastFlag_result1
end