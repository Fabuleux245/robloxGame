-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:11
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

return function(...) -- Line 6, Named "chain"
	local args_list_upvr = {...}
	local var3_upvw = 1
	local len_upvr = #args_list_upvr
	return function() -- Line 11
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: len_upvr (readonly)
			[3]: args_list_upvr (readonly)
		]]
		while var3_upvw <= len_upvr do
			local module = {args_list_upvr[var3_upvw]()}
			if module[1] ~= nil then
				return table.unpack(module)
			end
			var3_upvw += 1
		end
		return nil
	end
end