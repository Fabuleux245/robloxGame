-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:35
-- Luau version 6, Types version 3
-- Time taken: 0.000415 seconds

local symbols_upvr = require(script.Parent.symbols)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local var3
	if arg2 then
		local tbl = {}
		tbl.value = arg2
		tbl.calls = 0
		var3 = tbl
	end
	getmetatable(arg1)[symbols_upvr.SideEffect] = var3
end