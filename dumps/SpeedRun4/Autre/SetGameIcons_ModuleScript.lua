-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.000380 seconds

local Parent = script:FindFirstAncestor("GameIconRodux").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
return require(Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "iconsTable")
	local module = {}
	module.gameIcons = arg1
	return module
end)