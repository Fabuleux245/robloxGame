-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:35
-- Luau version 6, Types version 3
-- Time taken: 0.000296 seconds

local symbols_upvr = require(script.Parent.symbols)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg2
	getmetatable(arg1)[symbols_upvr.ReturnValue] = tbl
end