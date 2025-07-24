-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:38
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local tbl = {
	Unknown = "Unknown";
	Invalidated = "Invalidated";
	Abandoned = "Abandoned";
	LoadFailed = "LoadFailed";
}
local var3 = require(GenericChallenges.Parent.enumerate)(script.Name, tbl)
require(GenericChallenges.Utils.addRawValueMethodToEnum)(var3, tbl)
return var3