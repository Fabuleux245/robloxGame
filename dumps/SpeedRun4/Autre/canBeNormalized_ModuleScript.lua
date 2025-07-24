-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:16
-- Luau version 6, Types version 3
-- Time taken: 0.000660 seconds

local floatEquals_upvr = require(script.Parent.Parent.util.floatEquals)
return function(arg1) -- Line 9, Named "canBeNormalized"
	--[[ Upvalues[1]:
		[1]: floatEquals_upvr (readonly)
	]]
	local var3 = not floatEquals_upvr(arg1.X, 0)
	if not var3 then
		var3 = not floatEquals_upvr(arg1.Y, 0)
		if not var3 then
			var3 = not floatEquals_upvr(arg1.Z, 0)
		end
	end
	return var3
end