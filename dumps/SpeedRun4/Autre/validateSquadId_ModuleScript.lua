-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:47
-- Luau version 6, Types version 3
-- Time taken: 0.000617 seconds

local var1_upvr = require(script:FindFirstAncestor("SquadsCore").Parent.RegExp)("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")
return function(arg1) -- Line 9, Named "validateSquadId"
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	if arg1 and arg1 ~= "" and var1_upvr:exec(arg1) then
		return true
	end
	return false
end