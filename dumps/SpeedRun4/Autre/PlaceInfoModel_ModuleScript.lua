-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:20
-- Luau version 6, Types version 3
-- Time taken: 0.000418 seconds

return {
	new = function() -- Line 3, Named "new"
		return {}
	end;
	fromWeb = function(arg1) -- Line 9, Named "fromWeb"
		local var2 = arg1
		if not var2 then
			var2 = {}
		end
		var2.placeId = tostring(var2.placeId)
		return var2
	end;
}