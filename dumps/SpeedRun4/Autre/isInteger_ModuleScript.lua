-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:38
-- Luau version 6, Types version 3
-- Time taken: 0.000630 seconds

return function(arg1) -- Line 17
	local var3 = false
	if type(arg1) == "number" then
		var3 = false
		if arg1 ~= math.huge then
			if arg1 ~= math.floor(arg1) then
				var3 = false
			else
				var3 = true
			end
		end
	end
	return var3
end