-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:10
-- Luau version 6, Types version 3
-- Time taken: 0.000385 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local module = {
	anchor = nil;
}
local Logger_upvr = require(Foundation.Utility.Logger)
function module.setAnchor(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:warning("No PopoverProvider found for Popover")
end
module.isOpen = false
return require(Foundation.Parent.React).createContext(module)