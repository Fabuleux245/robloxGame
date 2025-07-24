-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:06
-- Luau version 6, Types version 3
-- Time taken: 0.001155 seconds

return function(arg1) -- Line 1
	if not arg1 then
		return false
	end
	local table_find_result1_3 = table.find(arg1, "WhoCanChatWithMeInApp")
	if not table_find_result1_3 then
		table_find_result1_3 = table.find(arg1, "WhoCanGroupChatWithMeInApp")
		if not table_find_result1_3 then
			table_find_result1_3 = table.find(arg1, "WhoCanOneOnOnePartyWithMe")
			if not table_find_result1_3 then
				table_find_result1_3 = table.find(arg1, "WhoCanGroupPartyWithMe")
			end
		end
	end
	if table_find_result1_3 == nil then
	else
	end
	return true
end