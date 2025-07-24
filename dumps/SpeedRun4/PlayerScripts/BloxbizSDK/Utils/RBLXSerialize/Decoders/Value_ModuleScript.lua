-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:53
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local Convertors_upvr = require(script.Parent.Parent.Convertors)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: Convertors_upvr (readonly)
	]]
	local ClassName = arg2.ClassName
	local var4 = arg2[ClassName]
	if var4 then
		local var5 = Convertors_upvr[ClassName]
		if var5 then
			return var5(false, var4)
		end
		return nil
	end
	return nil
end