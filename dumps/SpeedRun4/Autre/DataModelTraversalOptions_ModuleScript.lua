-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:28
-- Luau version 6, Types version 3
-- Time taken: 0.000448 seconds

local tbl_upvr = {
	instanceProcessingLimit = 1000;
}
return {
	new = function(arg1) -- Line 24, Named "new"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local clone = table.clone(tbl_upvr)
		if arg1 then
			for i, v in arg1 do
				clone[i] = v
			end
		end
		return clone
	end;
}