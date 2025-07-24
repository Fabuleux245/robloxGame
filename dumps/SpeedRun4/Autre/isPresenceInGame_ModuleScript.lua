-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:20
-- Luau version 6, Types version 3
-- Time taken: 0.001005 seconds

return function(arg1) -- Line 8
	if not arg1 then
		return false
	end
	local var3 = false
	if arg1.userPresenceType == "InGame" then
		var3 = false
		if arg1.universeId ~= nil then
			if arg1.universeId == "" then
				var3 = false
			else
				var3 = true
			end
		end
	end
	return var3
end