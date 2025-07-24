-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:43
-- Luau version 6, Types version 3
-- Time taken: 0.000318 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module.children = {}
	module.isEndOfWord = false
	module.data = arg1
	return module
end
return module_upvr