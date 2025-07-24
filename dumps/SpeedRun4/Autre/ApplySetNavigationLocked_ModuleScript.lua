-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:23
-- Luau version 6, Types version 3
-- Time taken: 0.000603 seconds

local Parent = script:FindFirstAncestor("NavigationRodux").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
return require(Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	return {
		locked = ArgCheck_upvr.isType(arg1, "boolean", "locked");
	}
end)