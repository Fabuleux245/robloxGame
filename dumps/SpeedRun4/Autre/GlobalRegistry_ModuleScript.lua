-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:45
-- Luau version 6, Types version 3
-- Time taken: 0.000699 seconds

local module_upvw = {}
local module = {}
local Symbol_upvr = require(script.Parent.Symbol)
function module.getOrInit(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: module_upvw (read and write)
		[2]: Symbol_upvr (readonly)
	]]
	if module_upvw[arg1] == nil then
		module_upvw[arg1] = Symbol_upvr.new(arg1)
	end
	return module_upvw[arg1]
end
function module.__clear() -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvw (read and write)
	]]
	module_upvw = {}
end
return module