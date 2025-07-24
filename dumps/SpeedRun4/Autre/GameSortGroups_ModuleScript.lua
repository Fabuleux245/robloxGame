-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:26
-- Luau version 6, Types version 3
-- Time taken: 0.000385 seconds

local module = {
	ChatGames = "ChatGames";
	Games = "Games";
	HomeGames = "HomeGames";
	GamesSeeAll = "GamesSeeAll";
	GamesList = "GamesList";
}
local var2 = "UnifiedHomeSorts"
module.UnifiedHomeSorts = var2
if require(script.Parent.Parent.SharedFlags).FFlagSearchOmniAutocompletePage then
	var2 = "SearchLandingPage"
else
	var2 = nil
end
module.SearchLandingPage = var2
return module