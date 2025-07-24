-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:32
-- Luau version 6, Types version 3
-- Time taken: 0.000508 seconds

local module_upvr = {50, 128, 150, 256, 512}
local ArgCheck_upvr = require(game:GetService("CorePackages").Workspace.Packages.ArgCheck)
return function(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	ArgCheck_upvr.isNonNegativeNumber(arg1, "Game Icon Size")
	for _, v in ipairs(module_upvr) do
		if arg1 <= v then
			return v
		end
	end
	return module_upvr[#module_upvr]
end