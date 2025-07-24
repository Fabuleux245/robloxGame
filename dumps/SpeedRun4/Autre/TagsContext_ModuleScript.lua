-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:18
-- Luau version 6, Types version 3
-- Time taken: 0.000341 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Logger_upvr = require(Foundation.Utility.Logger)
return require(Foundation.Parent.React).createContext(function() -- Line 7
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:warning("No Style Provider found")
	return ""
end)