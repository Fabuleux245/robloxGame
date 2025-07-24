-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:22
-- Luau version 6, Types version 3
-- Time taken: 0.000386 seconds

local module = {}
local tbl_2 = {}
local tbl = {}
local findAvatarHeadshotById_upvr = require(script.Parent.Parent.connectors.PlayerConnector).findAvatarHeadshotById
function tbl.avatarHeadshot(arg1, arg2, arg3, arg4) -- Line 9
	--[[ Upvalues[1]:
		[1]: findAvatarHeadshotById_upvr (readonly)
	]]
	return findAvatarHeadshotById_upvr(arg1.id, arg3.fetchImpl)
end
tbl_2.Player = tbl
module.default = tbl_2
return module