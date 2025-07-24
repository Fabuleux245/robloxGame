-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:39
-- Luau version 6, Types version 3
-- Time taken: 0.000414 seconds

return function(arg1) -- Line 3, Named "getPresenceText"
	if arg1 then
		if arg1.status == "InGame" or arg1.status == "InStudio" then
			return arg1.locationString
		end
		if arg1.status == "Online" then
			return "Online"
		end
		return "Offline"
	end
	return ""
end