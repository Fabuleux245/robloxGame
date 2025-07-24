-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:53
-- Luau version 6, Types version 3
-- Time taken: 0.000730 seconds

return function() -- Line 4, Named "createUniqueKey"
	local tbl_upvr = {}
	return function(arg1) -- Line 7
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if tbl_upvr[arg1] == nil then
			tbl_upvr[arg1] = 1
			return arg1
		end
		while true do
			local var3 = tbl_upvr
			var3[arg1] += 1
			local formatted = `{arg1}_{tbl_upvr[arg1]}`
			if tbl_upvr[formatted] == nil then
				return formatted
			end
		end
	end
end