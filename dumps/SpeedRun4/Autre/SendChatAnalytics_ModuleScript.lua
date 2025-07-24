-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:46
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: RbxAnalyticsService_upvr (readonly)
	]]
	if not arg2 then
		local tbl = {}
	end
	if tbl == nil then
	else
	end
	assert(true, "eventTable must not be nil")
	tbl.gameId = tostring(game.GameId)
	tbl.placeId = tostring(game.PlaceId)
	RbxAnalyticsService_upvr:SendEventDeferred("rcc", "lua_chat_system", arg1, tbl)
end