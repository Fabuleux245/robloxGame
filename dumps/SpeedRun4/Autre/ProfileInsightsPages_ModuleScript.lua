-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:15
-- Luau version 6, Types version 3
-- Time taken: 0.000514 seconds

local module = {}
local tbl_2 = {}
local tbl = {}
local mergeLists_upvr = require(script.Parent.utils.mergeLists)
function tbl.merge(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: mergeLists_upvr (readonly)
	]]
	return mergeLists_upvr(arg2, arg3)
end
tbl_2.profileInsights = tbl
module.fields = tbl_2
return module