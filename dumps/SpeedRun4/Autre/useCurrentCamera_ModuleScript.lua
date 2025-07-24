-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:09
-- Luau version 6, Types version 3
-- Time taken: 0.000274 seconds

local useProperty_upvr = require(script:FindFirstAncestor("RobloxAppHooks").Parent.GuiObjectUtils).useProperty
return function() -- Line 5, Named "useCurrentCamera"
	--[[ Upvalues[1]:
		[1]: useProperty_upvr (readonly)
	]]
	return useProperty_upvr(workspace, "CurrentCamera")
end