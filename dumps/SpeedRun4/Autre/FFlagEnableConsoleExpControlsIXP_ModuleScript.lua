-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:21:44
-- Luau version 6, Types version 3
-- Time taken: 0.000458 seconds

local tbl = {
	HAMBURGER = "hamburger";
	SUBMENU = "submenu";
}
local AppStorageService_upvr = game:GetService("AppStorageService")
local pcall_result1, pcall_result2 = pcall(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	return AppStorageService_upvr:GetItem("ExperienceMenuVersion")
end)
if pcall_result1 and (pcall_result2 == tbl.HAMBURGER or pcall_result2 == tbl.SUBMENU) then
	return game:DefineFastFlag("EnableConsoleExpControlsIXP7", false)
end
return false