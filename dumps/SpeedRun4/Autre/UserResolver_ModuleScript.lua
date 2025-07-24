-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:25
-- Luau version 6, Types version 3
-- Time taken: 0.000615 seconds

local module = {}
local UserConnector = require(script.Parent.Parent.connectors.UserConnector)
local tbl = {
	User = {
		__resolveType = function() -- Line 8, Named "__resolveType"
			return "Player"
		end;
	};
}
local tbl_2 = {}
local findMe_upvr = UserConnector.findMe
function tbl_2.me(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: findMe_upvr (readonly)
	]]
	return findMe_upvr(arg3.fetchImpl)
end
local findUserById_upvr = UserConnector.findUserById
function tbl_2.user(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[1]:
		[1]: findUserById_upvr (readonly)
	]]
	return findUserById_upvr(arg2.id, arg3.fetchImpl)
end
tbl.Query = tbl_2
module.default = tbl
return module