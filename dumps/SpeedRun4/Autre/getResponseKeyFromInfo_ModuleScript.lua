-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:28
-- Luau version 6, Types version 3
-- Time taken: 0.000603 seconds

return {
	getResponseKeyFromInfo = function(arg1) -- Line 14, Named "getResponseKeyFromInfo"
		if arg1.fieldNodes[1] and arg1.fieldNodes[1].alias ~= nil then
			return arg1.fieldNodes[1].alias.value
		end
		return arg1.fieldName
	end;
}