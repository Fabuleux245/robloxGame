-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:47
-- Luau version 6, Types version 3
-- Time taken: 0.000926 seconds

local null_upvr = require(script.Parent.null)
return {
	isNillish = function(arg1) -- Line 3, Named "isNillish"
		--[[ Upvalues[1]:
			[1]: null_upvr (readonly)
		]]
		local var2 = true
		if arg1 ~= nil then
			if arg1 ~= null_upvr then
				var2 = false
			else
				var2 = true
			end
		end
		return var2
	end;
	isNotNillish = function(arg1) -- Line 7, Named "isNotNillish"
		--[[ Upvalues[1]:
			[1]: null_upvr (readonly)
		]]
		local var3 = false
		if arg1 ~= nil then
			if arg1 == null_upvr then
				var3 = false
			else
				var3 = true
			end
		end
		return var3
	end;
}