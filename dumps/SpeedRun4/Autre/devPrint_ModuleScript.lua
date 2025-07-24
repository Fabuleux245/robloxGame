-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:53
-- Luau version 6, Types version 3
-- Time taken: 0.000766 seconds

local inspect_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).util.inspect
return function(...) -- Line 19, Named "devPrint"
	--[[ Upvalues[1]:
		[1]: inspect_upvr (readonly)
	]]
	local tbl = {}
	for i = 1, select('#', ...) do
		tbl[i] = inspect_upvr(select(i, ...))
	end
	print(table.unpack(tbl))
end