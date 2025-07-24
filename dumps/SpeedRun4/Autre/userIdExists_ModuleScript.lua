-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:21
-- Luau version 6, Types version 3
-- Time taken: 0.000929 seconds

return function(arg1) -- Line 1
	local var3 = false
	if arg1 ~= nil then
		var3 = false
		if arg1 ~= "" then
			if 0 >= tonumber(arg1) then
				var3 = false
			else
				var3 = true
			end
		end
	end
	return var3
end