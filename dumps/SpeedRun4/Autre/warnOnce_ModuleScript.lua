-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:23
-- Luau version 6, Types version 3
-- Time taken: 0.000390 seconds

local tbl_upvr = {}
local console_upvr = require(script.Parent.Parent.Shared).console
return function(arg1, arg2) -- Line 22, Named "warnOnce"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	if not tbl_upvr[arg1] then
		console_upvr.warn("The legacy Roact API '%s' is deprecated, and will be removed ".."in a future release.\n\n%s", arg1, arg2)
	end
	tbl_upvr[arg1] = true
end