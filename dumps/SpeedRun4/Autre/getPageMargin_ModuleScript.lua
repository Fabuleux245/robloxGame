-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.000401 seconds

local t_upvr = require(script.Parent.Parent.Parent.Parent.t)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	assert(t_upvr.number(arg1))
	if arg1 < 360 then
		return 12
	end
	if arg1 < 600 then
		return 24
	end
	return 48
end