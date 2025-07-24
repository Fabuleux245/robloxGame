-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:56
-- Luau version 6, Types version 3
-- Time taken: 0.000510 seconds

local string_gsub_result1_upvr = string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "/m.", "/www.")
return function() -- Line 4, Named "getRobuxStoreUrl"
	--[[ Upvalues[1]:
		[1]: string_gsub_result1_upvr (readonly)
	]]
	return "%sUpgrades/Robux.aspx":format(string_gsub_result1_upvr)
end