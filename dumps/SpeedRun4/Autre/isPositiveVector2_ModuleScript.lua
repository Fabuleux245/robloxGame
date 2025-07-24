-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:44
-- Luau version 6, Types version 3
-- Time taken: 0.000683 seconds

local t = require(script.Parent.Parent.Parent.t)
return t.intersection(t.Vector2, function(arg1) -- Line 7
	if arg1.X < 0 or arg1.Y < 0 then
		return false, "each component of the Vector2 must be >= 0; component values are: %d, %d":format(arg1.X, arg1.Y)
	end
	return true
end)