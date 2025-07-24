-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:37
-- Luau version 6, Types version 3
-- Time taken: 0.001377 seconds

return function(arg1) -- Line 16
	local var4 = false
	if typeof(arg1) == "number" then
		var4 = false
		if arg1 == arg1 then
			var4 = false
			if arg1 ~= math.huge then
				if arg1 == (-math.huge) then
					var4 = false
				else
					var4 = true
				end
			end
		end
	end
	return var4
end