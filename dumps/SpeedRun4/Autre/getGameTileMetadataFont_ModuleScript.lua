-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:04
-- Luau version 6, Types version 3
-- Time taken: 0.000868 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileFixConsoleMetadataText
return function(arg1, arg2, arg3, arg4) -- Line 10, Named "getGameTileMetadataFont"
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[2]: FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr (readonly)
	]]
	if FFlagLuaAppMigrateGameTile_upvr and arg4 and arg3 then
		if FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr and arg1 == false then
			return arg3.Typography.BodySmall
		end
		return arg3.Typography.BodyMedium
	end
	if arg1 then
		return arg2.Semantic.Typography.Body
	end
	return arg2.Semantic.Typography.CaptionHeader
end