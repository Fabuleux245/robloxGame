-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:47
-- Luau version 6, Types version 3
-- Time taken: 0.000879 seconds

return function(arg1) -- Line 1, Named "isFoundationImage"
	local var2 = false
	if arg1 ~= nil then
		var2 = false
		if arg1 ~= "" then
			if arg1:match("^%w+://.*$") ~= nil then
				var2 = false
			else
				var2 = true
			end
		end
	end
	return var2
end