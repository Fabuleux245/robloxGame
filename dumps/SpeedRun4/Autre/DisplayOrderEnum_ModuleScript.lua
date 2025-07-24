-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:41
-- Luau version 6, Types version 3
-- Time taken: 0.000338 seconds

local SharedFlags = script:FindFirstAncestor("DisplayOrder").Parent.SharedFlags
local module = {}
if require(SharedFlags).GetFFlagIncreaseSocialContextDisplayOrder() then
	SharedFlags = 8
else
	SharedFlags = 7
end
module.SocialContextToastContainer = SharedFlags
return module