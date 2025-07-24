-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:00
-- Luau version 6, Types version 3
-- Time taken: 0.000378 seconds

local module = {
	GameDetailPage = "GameDetailPage";
	GameDetailPlayability = "GameDetailPlayability";
}
local var2 = "GameSortGroup"
module.GameSortGroup = var2
if require(script:FindFirstAncestor("NextDataExpirationTimeRodux").Parent.SharedFlags).FFlagEnableTopSongsSort then
	var2 = "SongDetailPage"
else
	var2 = nil
end
module.SongDetailPage = var2
return module