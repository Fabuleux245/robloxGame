-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:58
-- Luau version 6, Types version 3
-- Time taken: 0.000801 seconds

return function(arg1) -- Line 11, Named "calculateCountdownTime"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1 += 59
	local var1 = arg1
	local var2 = 0
	if 86400 <= var1 then
		var2 = math.floor(var1 / 86400)
		var1 -= var2 * 86400
	end
	if 3600 <= var1 then
		local floored = math.floor(var1 / 3600)
		var1 -= floored * 3600
	end
	if 0 < var1 then
	end
	return {
		days = var2;
		hours = floored;
		minutes = math.floor(var1 / 60);
	}
end